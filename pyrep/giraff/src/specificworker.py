#!/usr/bin/python3
# -*- coding: utf-8 -*-
#
#    Copyright (C) 2020 by YOUR NAME HERE
#
#    This file is part of RoboComp
#
#    RoboComp is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    RoboComp is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with RoboComp.  If not, see <http://www.gnu.org/licenses/>.
#

from genericworker import *
import time
from pyrep import PyRep
from pyrep.objects.vision_sensor import VisionSensor
from pyrep.objects.dummy import Dummy
from pyrep.objects.shape import Shape
from pyrep.objects.joint import Joint
import numpy as np
import numpy_indexed as npi
import cv2
import itertools as it
from math import *

class TimeControl:
    def __init__(self, period_):
        self.counter = 0
        self.start = time.time()  # it doesn't exist yet, so initialize it
        self.start_print = time.time()  # it doesn't exist yet, so initialize it
        self.period = period_

    def wait(self):
        elapsed = time.time() - self.start
        if elapsed < self.period:
            time.sleep(self.period - elapsed)
        self.start = time.time()
        self.counter += 1
        if time.time() - self.start_print > 1:
            print("Freq -> ", self.counter, " Hz")
            self.counter = 0
            self.start_print = time.time()


class SpecificWorker(GenericWorker):
    def __init__(self, proxy_map):
        super(SpecificWorker, self).__init__(proxy_map)

    def __del__(self):
        print('SpecificWorker destructor')

    def setParams(self, params):
        SCENE_FILE = params["scene_file"]
        self.WITH_BILL = False
        if "bill" in SCENE_FILE:
            self.WITH_BILL = True

        self.pr = PyRep()
        self.pr.launch(SCENE_FILE, headless=False)
        self.pr.start()

        # robot
        self.robot_object = Shape("Giraff")
        self.left_wheel = Joint("Pioneer_p3dx_leftMotor")
        self.right_wheel = Joint("Pioneer_p3dx_rightMotor")
        self.radius = 100  # wheel radius in mm
        self.semi_width = 165  # axle semi width in mm
        self.speed_robot = []
        self.speed_robot_ant = []
        self.bState = RoboCompGenericBase.TBaseState()
        
	# Read existing people
        self.people = {}
        if Dummy.exists("Bill"):
            self.people["Bill"] = Dummy("Bill")
        for i in range(0,2):
            name = "Bill#" + str(i)
            if Dummy.exists(name):
                self.people[name] = Dummy(name)
        # cameras
        self.cameras_write = {}
        self.cameras_read = {}

        self.tablet_camera_name = "camera_tablet"
        cam = VisionSensor(self.tablet_camera_name)
        self.cameras_write[self.tablet_camera_name] = { "handle": cam,
                                                        "id": 0,
                                                        "angle": np.radians(cam.get_perspective_angle()),
                                                        "width": cam.get_resolution()[0],
                                                        "height": cam.get_resolution()[1],
                                                        "focal": (cam.get_resolution()[0] / 2) / np.tan(
                                                         np.radians(cam.get_perspective_angle() / 2)),
                                                        "rgb": np.array(0),
                                                        "depth": np.ndarray(0),
                                                        "is_ready": False,
                                                        "is_rgbd": False
                                                    }

        self.top_camera_name = "camera_top"
        cam = VisionSensor(self.top_camera_name)
        self.cameras_write[self.top_camera_name] = { "handle": cam,
                                                     "id": 0,
                                                     "angle": np.radians(cam.get_perspective_angle()),
                                                     "width": cam.get_resolution()[0],
                                                     "height": cam.get_resolution()[1],
                                                     "focal": (cam.get_resolution()[0] / 2) / np.tan(
                                                        np.radians(cam.get_perspective_angle() / 2)),
                                                     "rgb": np.array(0),
                                                     "depth": np.ndarray(0),
                                                     "is_ready": False,
                                                     "is_rgbd": True
                                                    }
        self.cameras_read = self.cameras_write.copy()

        # laser
        self.lasers = {}
        self.hokuyo_front_left_name = "Hokuyo_sensor2"
        cam = VisionSensor(self.hokuyo_front_left_name)
        self.lasers[self.hokuyo_front_left_name] = { "handle": cam,
                                                      "id": 0,
                                                      "angle": np.radians(cam.get_perspective_angle()),
                                                      "width": cam.get_resolution()[0],
                                                     "semiwidth": cam.get_resolution()[0] / 2.0,
                                                      "height": cam.get_resolution()[1],
                                                      "focal": (cam.get_resolution()[0] / 2) / np.tan(
                                                          np.radians(cam.get_perspective_angle() / 2)),
                                                      "rgb": np.array(0),
                                                      "depth": np.ndarray(0),
                                                      "offset_angle": -np.pi/3.0
                                                     }
        self.hokuyo_front_right_name = "Hokuyo_sensor1"
        cam = VisionSensor(self.hokuyo_front_right_name)
        self.lasers[self.hokuyo_front_right_name] = { "handle": cam,
                                                      "id": 0,
                                                      "angle": np.radians(cam.get_perspective_angle()),
                                                      "width": cam.get_resolution()[0],
                                                      "semiwidth": cam.get_resolution()[0]/2.0,
                                                      "height": cam.get_resolution()[1],
                                                      "focal": (cam.get_resolution()[0] / 2) / np.tan(
                                                        np.radians(cam.get_perspective_angle() / 2)),
                                                      "rgb": np.array(0),
                                                      "depth": np.ndarray(0),
                                                      "offset_angle": np.pi / 3.0
                                                    }
        self.ldata_write = []
        self.ldata_read = []
        
        # PoseEstimation
        self.robot_full_pose_write = RoboCompFullPoseEstimation.FullPoseEuler()
        self.robot_full_pose_read = RoboCompFullPoseEstimation.FullPoseEuler()

        # JoyStick
        self.joystick_newdata = []

        self.last_received_data_time = 0

        # Tablet tilt motor
        self.tablet_motor = Joint("tablet_joint")
        self.tablet_new_pos = None


    def compute(self):
        tc = TimeControl(0.05)
        while True:
            self.pr.step()
            self.read_laser_raw()
            self.read_cameras([self.tablet_camera_name, self.top_camera_name])
            self.read_joystick()
            self.read_robot_pose()
            self.read_people()
            self.move_robot()
            self.move_tablet()
            tc.wait()

    ###########################################
    ### LASER get and publish laser data
    ###########################################
    def read_laser_raw(self):
        data = self.pr.script_call("get_depth_data@Hokuyo", 1)
        if len(data[1]) > 0:
            self.hokuyo = Shape("Hokuyo")
            h_pos = self.hokuyo.get_position()
            polar = np.zeros(shape=(int(len(data[1])/3), 2))
            self.ldata_write = []
            for x, y, z in self.grouper(data[1], 3):                      # extract non-intersecting groups of 3
                self.ldata_write.append(RoboCompLaser.TData(-np.arctan2(y, x), np.linalg.norm([x, y])*1000.0))

            del self.ldata_write[-7:]
            del self.ldata_write[:7]

            # if self.ldata_write[0] == 0:
            #    self.ldata_write[0] = 200  # half robot width
            # del self.ldata_write[-3:]
            # del self.ldata_write[:3]
            # for i in range(1, len(self.ldata_write)):
            #    if self.ldata_write[i].dist == 0:
            #        self.ldata_write[i].dist = self.ldata_write[i - 1].dist


            self.ldata_read, self.ldata_write = self.ldata_write, self.ldata_read

            # try:
            #     self.laserpub_proxy.pushLaserData(self.ldata_read)
            # except Ice.Exception as e:
            #     print(e)

    def read_laser(self):
        data = self.pr.script_call("get_depth_data@Hokuyo", 1)
        if len(data[1]) > 0:
            self.hokuyo = Shape("Hokuyo")
            h_pos = self.hokuyo.get_position()
            polar = np.zeros(shape=(int(len(data[1])/3), 2))
            i = 0
            for x, y, z in self.grouper(data[1], 3):                      # extract non-intersecting groups of 3
                # translate to the robot center
                #x += h_pos[0]
                #y += h_pos[1]
                polar[i] = [-np.arctan2(y, x), np.linalg.norm([x, y])]    # add to list in polar coordinates
                i += 1

            angles = np.linspace(-np.radians(120), np.radians(120), 360)  # create regular angular values
            positions = np.searchsorted(angles, polar[:, 0])  # list of closest position in polar for each laser measurement
            self.ldata_write = [RoboCompLaser.TData(a, 0) for a in angles]  # create empty 240 angle array
            pos, medians = npi.group_by(positions).median(polar[:, 1])  # group by repeated positions
            for p, m in it.zip_longest(pos, medians):  # fill the angles with measures
                if p < len(self.ldata_write):
                    self.ldata_write[p].dist = int(m * 1000)  # to millimeters
            if self.ldata_write[0] == 0:
               self.ldata_write[0] = 200  # half robot width
            del self.ldata_write[-3:]
            del self.ldata_write[:3]
            for i in range(1, len(self.ldata_write)):
               if self.ldata_write[i].dist == 0:
                   self.ldata_write[i].dist = self.ldata_write[i - 1].dist


            self.ldata_read, self.ldata_write = self.ldata_write, self.ldata_read

            # try:
            #     self.laserpub_proxy.pushLaserData(self.ldata_read)
            # except Ice.Exception as e:
            #     print(e)

    ###########################################
    ### PEOPLE get and publish people position
    ###########################################
    def read_people(self):
        self.people = {}
        if Dummy.exists("Bill"):
            self.people["Bill"] = Dummy("Bill")
        for i in range(0, 2):
            name = "Bill#" + str(i)
            if Dummy.exists(name):
                self.people[name] = Dummy(name)
        people_data = RoboCompHumanToDSRPub.PeopleData()
        people_data.timestamp = time.time()
        people = [] # RoboCompHumanToDSRPub.People()
        for name, handle in self.people.items():
            pos = handle.get_position()
            rot = handle.get_orientation()
            person = RoboCompHumanToDSRPub.Person(len(people), pos[0] * 1000, pos[1] * 1000, pos[2] * 1000,
                                                  pi - rot[2] - pi/2,
                                                  {})
            people.append(person)
        try:
            people_data.peoplelist = people
            self.humantodsrpub_proxy.newPeopleData(people_data)
        except Ice.Exception as e:
            print(e)
            
    def grouper(self, inputs, n, fillvalue=None):
        iters = [iter(inputs)] * n
        return it.zip_longest(*iters, fillvalue=fillvalue)

    ###########################################
    ### CAMERAS get and publish cameras data
    ###########################################
    def read_cameras(self, camera_names):
        for camera_name in camera_names:
            cam = self.cameras_write[camera_name]
            image_float = cam["handle"].capture_rgb()
            image = cv2.normalize(src=image_float, dst=None, alpha=0, beta=255, norm_type=cv2.NORM_MINMAX,
                                  dtype=cv2.CV_8U)
            if cam["is_rgbd"]:
                depth = cam["handle"].capture_depth(True)
                #image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
                cam["depth"] = RoboCompCameraRGBDSimple.TDepth(cameraID=cam["id"], width=cam["handle"].get_resolution()[0],
                                                              height=cam["handle"].get_resolution()[1],
                                                              focalx=cam["focal"], focaly=cam["focal"],
                                                              alivetime=time.time(), depthFactor=1.0,
                                                              depth=depth.tobytes())
                cam["rgb"] = RoboCompCameraRGBDSimple.TImage(cameraID=cam["id"], width=cam["width"], height=cam["height"],
                                                              depth=3, focalx=cam["focal"], focaly=cam["focal"],
                                                              alivetime=time.time(), image=image.tobytes())
            else:
                cam["rgb"] = RoboCompCameraSimple.TImage(width=cam["width"], height=cam["height"],
                                                              depth=3, image=image.tobytes(), compressed=False)
            cam["is_ready"] = True

        self.cameras_write, self.cameras_read = self.cameras_read, self.cameras_write

    ###########################################
    ### JOYSITCK read and move the robot
    ###########################################
    def read_joystick(self):
        if self.joystick_newdata:  # and (time.time() - self.joystick_newdata[1]) > 0.1:
            datos = self.joystick_newdata[0]
            adv = 0.0
            rot = 0.0
            bill_advance = 0.0
            bill_rotate = 0.0
            for x in datos.axes:
                if x.name == "advance":
                    adv = x.value if np.abs(x.value) > 10 else 0
                if x.name == "rotate" or x.name == "turn":
                    rot = x.value if np.abs(x.value) > 0.01 else 0
                if x.name == "bill_advance":
                    bill_advance = x.value if np.abs(x.value) > 0.05 else 0
                    print("bill_advance ", bill_advance)
                if x.name == "bill_rotate":
                    bill_rotate = x.value if np.abs(x.value) > 0.05 else 0

            converted = self.convert_base_speed_to_motors_speed(adv, rot)
            # move Bill
            if self.WITH_BILL:
                bill_target = Dummy("Bill_goalDummy")
                current_pos = bill_target.get_position()
                bill_target.set_position([current_pos[0]+bill_rotate*0.5, current_pos[1]+bill_advance*0.5, current_pos[2]])
                # if bill_advance > 0:
                #     self.pr.script_call("walk_straight@Bill", 1)
                # elif bill_advance < 0:
                #     self.pr.script_call("walk_straight_backwards@Bill", 1)
                # else:
                #     self.pr.script_call("stop@Bill", 1)
                # if bill_rotate > 0:
                #     self.pr.script_call("walk_left@Bill", 1)
                # elif bill_rotate < 0:
                #     self.pr.script_call("walk_right@Bill", 1)


            #print("Joystick ", [adv, rot], converted)
            self.joystick_newdata = None
            self.last_received_data_time = time.time()
        else:
            elapsed = time.time() - self.last_received_data_time
            if elapsed > 2 and elapsed < 3:
                self.convert_base_speed_to_motors_speed(0, 0)

    def convert_base_speed_to_motors_speed(self, adv, rot):
        #  adv = r*(Wl + Wr)/2
        #  rot = r*(-Wl + Wr)/2c
        #  isolating Wl,Wr
        #  Wl = ( adv - c*rot ) / r
        #  Wr = ( adv + c*rot ) / r
        left_vel = (adv + self.semi_width * rot) / self.radius
        right_vel = (adv - self.semi_width * rot) / self.radius
        self.left_wheel.set_joint_target_velocity(left_vel)
        self.right_wheel.set_joint_target_velocity(right_vel)
        return left_vel, right_vel

    ###########################################
    ### ROBOT POSE get and publish robot position
    ###########################################
    def read_robot_pose(self):

        pose = self.robot_object.get_position()
        rot = self.robot_object.get_orientation()
        linear_vel, ang_vel = self.robot_object.get_velocity()

        isMoving = np.abs(linear_vel[0]) > 0.01 or np.abs(linear_vel[1]) > 0.01 or np.abs(ang_vel[2]) > 0.01
        self.bState = RoboCompGenericBase.TBaseState(x=pose[0] * 1000,
                                                     z=pose[1] * 1000,
                                                     alpha=rot[2],
                                                     advVx=linear_vel[0] * 1000,
                                                     advVz=linear_vel[1] * 1000,
                                                     rotV=ang_vel[2],
                                                     isMoving=isMoving)
        
        self.robot_full_pose_write.x = pose[0] * 1000
        self.robot_full_pose_write.y = pose[1] * 1000
        self.robot_full_pose_write.z = pose[2] * 1000
        self.robot_full_pose_write.rx = rot[0]
        self.robot_full_pose_write.ry = rot[1]
        self.robot_full_pose_write.rz = rot[2]
        self.robot_full_pose_write.vx = linear_vel[0] * 1000.0
        self.robot_full_pose_write.vy = linear_vel[1] * 1000.0
        self.robot_full_pose_write.vz = linear_vel[2] * 1000.0
        self.robot_full_pose_write.vrx = ang_vel[0]
        self.robot_full_pose_write.vry = ang_vel[1]
        self.robot_full_pose_write.vrz = ang_vel[2]

        # swap
        self.robot_full_pose_write, self.robot_full_pose_read = self.robot_full_pose_read, self.robot_full_pose_write


    ###########################################
    ### MOVE ROBOT from Omnirobot interface
    ###########################################
    def move_robot(self):

        if self.speed_robot:
            self.convert_base_speed_to_motors_speed(self.speed_robot[0], self.speed_robot[1])
            #print("Velocities sent to robot:", self.speed_robot)
            self.speed_robot = None

    ###########################################
    ### MOVE ROBOT from Omnirobot interface
    ###########################################
    def move_tablet(self):
        if self.tablet_new_pos:
            self.tablet_motor.set_joint_position(self.tablet_new_pos)  # radians
            self.tablet_new_pos = None

    ##################################################################################
    # SUBSCRIPTION to sendData method from JoystickAdapter interface
    ###################################################################################
    def JoystickAdapter_sendData(self, data):
        self.joystick_newdata = [data, time.time()]

    ##################################################################################
    #                       Methods for CameraRGBDSimple
    # ===============================================================================
    #
    # getAll
    #
    def CameraRGBDSimple_getAll(self, camera):
        if camera in self.cameras_read.keys() \
                and self.cameras_read[camera]["is_ready"] \
                and self.cameras_read[camera]["is_rgbd"]:
            return RoboCompCameraRGBDSimple.TRGBD(self.cameras_read[camera]["rgb"], self.cameras_read[camera]["depth"])
        else:
            e = RoboCompCameraRGBDSimple.HardwareFailedException()
            e.what = "No camera found with this name or with depth attributes: " + camera
            raise e

    #
    # getDepth
    #
    def CameraRGBDSimple_getDepth(self, camera):
        if camera in self.cameras_read.keys() \
                and self.cameras_read[camera]["is_ready"] \
                and self.cameras_real[camera]["has_depth"]:
            return self.cameras_read[camera]["depth"]
        else:
            e = RoboCompCameraRGBDSimple.HardwareFailedException()
            e.what = "No camera found with this name or with depth attributes: " + camera
            raise e

    #
    # getImage
    #
    def CameraRGBDSimple_getImage(self, camera):
        if camera in self.cameras_read.keys() and self.cameras_read[camera]["is_ready"]:
            return self.cameras_read[camera]["rgb"]
        else:
            e = RoboCompCameraRGBDSimple.HardwareFailedException()
            e.what = "No camera found with this name: " + camera
            raise e

    ##############################################
    ## Differentialbase
    #############################################

    #
    # correctOdometer
    #
    def DifferentialRobot_correctOdometer(self, x, z, alpha):
        pass

    #
    # getBasePose
    #
    def DifferentialRobot_getBasePose(self):
        if self.bState:
            x = self.bState.x
            z = self.bState.z
            alpha = self.bState.alpha
            return [x, z, alpha]
        else:
            return RoboCompGenericBase.TBaseState()

    #
    # getBaseState
    #
    def DifferentialRobot_getBaseState(self):
        if self.bState:
            return self.bState
        else:
            return RoboCompGenericBase.TBaseState()

    #
    # resetOdometer
    #
    def DifferentialRobot_resetOdometer(self):
        pass

    #
    # setOdometer
    #
    def DifferentialRobot_setOdometer(self, state):
        pass

    #
    # setOdometerPose
    #
    def DifferentialRobot_setOdometerPose(self, x, z, alpha):
        pass

    #
    # setSpeedBase
    #
    def DifferentialRobot_setSpeedBase(self, advz, rot):
        self.speed_robot = [advz, rot]

    #
    # stopBase
    #
    def DifferentialRobot_stopBase(self):
        pass

    # ===================================================================
    # CoppeliaUtils
    # ===================================================================
    def CoppeliaUtils_addOrModifyDummy(self, type, name, pose):
        if not Dummy.exists(name):
            dummy = Dummy.create(0.1)
            # one color for each type of dummy
            if type == RoboCompCoppeliaUtils.TargetTypes.Info:
                pass
            if type == RoboCompCoppeliaUtils.TargetTypes.Hand:
                pass
            if type == RoboCompCoppeliaUtils.TargetTypes.HeadCamera:
                pass
            dummy.set_name(name)
        else:
            dummy = Dummy(name)
            parent_frame_object = None
            if type == RoboCompCoppeliaUtils.TargetTypes.HeadCamera:
                parent_frame_object = Dummy("viriato_head_camera_pan_tilt")
            # print("Coppelia ", name, pose.x/1000, pose.y/1000, pose.z/1000)
            dummy.set_position([pose.x / 1000., pose.y / 1000., pose.z / 1000.], parent_frame_object)
            dummy.set_orientation([pose.rx, pose.ry, pose.rz], parent_frame_object)

    # =============== Methods for Component Implements ==================
    # ===================================================================

    #
    # IMPLEMENTATION of getFullPose method from FullPoseEstimation interface
    #
    def FullPoseEstimation_getFullPoseEuler(self):
        return self.robot_full_pose_read

    def FullPoseEstimation_getFullPoseMatrix(self): # NO USAR
        t = self.tm.get_transform("origin", "robot")
        m = RoboCompFullPoseEstimation.FullPoseMatrix()
        m.m00 = t[0][0]
        m.m01 = t[0][1]
        m.m02 = t[0][2]
        m.m03 = t[0][3]
        m.m10 = t[1][0]
        m.m11 = t[1][1]
        m.m12 = t[1][2]
        m.m13 = t[1][3]
        m.m20 = t[2][0]
        m.m21 = t[2][1]
        m.m22 = t[2][2]
        m.m23 = t[2][3]
        m.m30 = t[3][0]
        m.m31 = t[3][1]
        m.m32 = t[3][2]
        m.m33 = t[3][3]
        return m

    #
    # IMPLEMENTATION of setInitialPose method from FullPoseEstimation interface
    #
    def FullPoseEstimation_setInitialPose(self, x, y, z, rx, ry, rz):

        # should move robot in Coppelia to designated pose
        self.tm.add_transform("origin", "world",
                               pytr.transform_from(pyrot.active_matrix_from_intrinsic_euler_xyz([rx, ry, rz]), [x, y, z])
        )

    #
    # IMPLEMENTATION of getAllSensorDistances method from Ultrasound interface
    #
    def Ultrasound_getAllSensorDistances(self):
        ret = RoboCompUltrasound.SensorsState()
        #
        # write your CODE here
        #
        return ret

    #
    # IMPLEMENTATION of getAllSensorParams method from Ultrasound interface
    #
    def Ultrasound_getAllSensorParams(self):
        ret = RoboCompUltrasound.SensorParamsList()
        #
        # write your CODE here
        #
        return ret

    #
    # IMPLEMENTATION of getBusParams method from Ultrasound interface
    #
    def Ultrasound_getBusParams(self):
        ret = RoboCompUltrasound.BusParams()
        #
        # write your CODE here
        #
        return ret

    #
    # IMPLEMENTATION of getSensorDistance method from Ultrasound interface
    #
    def Ultrasound_getSensorDistance(self, sensor):
        ret = int()
        #
        # write your CODE here
        #
        return ret

    #
    # IMPLEMENTATION of getSensorParams method from Ultrasound interface
    #
    def Ultrasound_getSensorParams(self, sensor):
        ret = RoboCompUltrasound.SensorParams()
        #
        # write your CODE here
        #
        return ret

    # ===================================================================
    # ===================================================================
    #
    # IMPLEMENTATION of getRSSIState method from RSSIStatus interface
    #
    def RSSIStatus_getRSSIState(self):
        ret = RoboCompRSSIStatus.TRSSI()
        ret.percentage = 100;
        return ret

    #
    # IMPLEMENTATION of getBatteryState method from BatteryStatus interface
    #
    def BatteryStatus_getBatteryState(self):
        ret = RoboCompBatteryStatus.TBattery()
        ret.percentage = 100
        return ret
    #
    #######################################################
    #### Laser
    #######################################################
    #
    # getLaserAndBStateData
    #
    def Laser_getLaserAndBStateData(self):
        bState = RoboCompGenericBase.TBaseState()
        return self.ldata_read, bState

   #
   # getLaserConfData
   #

    def Laser_getLaserConfData(self):
        ret = RoboCompLaser.LaserConfData()
        return ret

    #
    # getLaserData
    #

    def Laser_getLaserData(self):
        return self.ldata_read

 # ===================================================================
    # IMPLEMENTATION of getMotorParams method from JointMotorSimple interface
    # ===================================================================

    def JointMotorSimple_getMotorParams(self, motor):
        ret = RoboCompJointMotorSimple.MotorParams()
        return ret

    #
    # IMPLEMENTATION of getMotorState method from JointMotorSimple interface
    #
    def JointMotorSimple_getMotorState(self, motor):
        ret = RoboCompJointMotorSimple.MotorState(self.tablet_motor.get_joint_position())  # radians
        return ret

    #
    # IMPLEMENTATION of setPosition method from JointMotorSimple interface
    #
    def JointMotorSimple_setPosition(self, name, goal):
        print("JointMotorSimple_setPosition: ", name, goal)
        # check position limits -10 to 80
        self.tablet_new_pos = goal.position

    #
    # IMPLEMENTATION of setVelocity method from JointMotorSimple interface
    #
    def JointMotorSimple_setVelocity(self, name, goal):
        pass

    #
    # IMPLEMENTATION of setZeroPos method from JointMotorSimple interface
    #
    def JointMotorSimple_setZeroPos(self, name):

        #
        # write your CODE here
        #
        pass


   # =============== Methods for Component Implements ==================
    #
    # IMPLEMENTATION of getImage method from CameraSimple interface
    #
    def CameraSimple_getImage(self):
        camera = self.tablet_camera_name
        if camera in self.cameras_read.keys() \
                and self.cameras_read[camera]["is_ready"]\
                and not self.cameras_read[camera]["is_rgbd"]:
                    return self.cameras_read[camera]["rgb"]
        else:
            e = RoboCompCameraSimple.HardwareFailedException()
            e.what = "No (no RGBD) camera found with this name: " + camera
            raise e
    # ===================================================================
    # ===================================================================
    #
    # IMPLEMENTATION of getPose method from BillCoppelia interface
    #
    def BillCoppelia_getPose(self):
        ret = RoboCompBillCoppelia.Pose()
        bill = Dummy("Bill")
        pos = bill.get_position()
        ret.x = pos[0] * 1000.0
        ret.y = pos[1] * 1000.0
        linear_vel, ang_vel = bill.get_velocity()
        ret.vx = linear_vel[0] * 1000.0
        ret.vy = linear_vel[1] * 1000.0
        ret.vo = ang_vel[2]
        ret.orientation = bill.get_orientation()[2]
        return ret

    #
    # IMPLEMENTATION of setSpeed method from BillCoppelia interface
    #
    def BillCoppelia_setSpeed(self, adv, rot):
        pass

    #
    # IMPLEMENTATION of setTarget method from BillCoppelia interface
    #
    def BillCoppelia_setTarget(self, tx, ty):
        bill_target = Dummy("Bill_goalDummy")
        current_pos = bill_target.get_position()
        bill_target.set_position([tx/1000.0, ty/1000.0, current_pos[2]])

    # ===================================================================



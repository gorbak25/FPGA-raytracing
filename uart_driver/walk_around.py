#!/usr/bin/env python2

import serial
import struct
import numpy as np
import math
import time

def rotation_matrix(axis, theta):
    """
    Return the rotation matrix associated with counterclockwise rotation about
    the given axis by theta radians.
    """
    axis = np.asarray(axis)
    axis = axis / math.sqrt(np.dot(axis, axis))
    a = math.cos(theta / 2.0)
    b, c, d = -axis * math.sin(theta / 2.0)
    aa, bb, cc, dd = a * a, b * b, c * c, d * d
    bc, ad, ac, ab, bd, cd = b * c, a * d, a * c, a * b, b * d, c * d
    return np.array([[aa + bb - cc - dd, 2 * (bc + ad), 2 * (bd - ac)],
                     [2 * (bc - ad), aa + cc - bb - dd, 2 * (cd + ab)],
                     [2 * (bd + ac), 2 * (cd - ab), aa + dd - bb - cc]])

ser = serial.Serial()
ser.baudrate = 115200
ser.port = '/dev/ttyUSB0'
ser.stopbits = 2
ser.bytesize = 8
ser.open()

def send_data(data):
    checksum = 0
    for b in data:
        checksum = checksum ^ ord(b)
    ser.write(data+struct.pack("B",checksum))
    resp = ser.read(1)
    if(resp != '\x00'):
        raise RuntimeError("Invalid ack, got {}".format(hex(ord(resp))))

def send_payload(tag, data):
    send_data(struct.pack("B", tag) + struct.pack("B", len(data)) + data)

def pack_double(val):
    r = struct.pack("<i", val * 2**24)
    r = ''.join(map(lambda a: chr(int('{:08b}'.format(ord(a))[::-1], 2)), r))
    #print r.encode('hex')
    return r

class Vector:
    def __init__(self, x = 0.0, y = 0.0, z = 0.0):
        self.x = x
        self.y = y
        self.z = z

    def pack(self):
        return ''.join(map(pack_double, [self.x, self.y, self.z]))

    def sub(self, b):
        return Vector(self.x - b.x, self.y - b.y, self.z - b.z)

    def norm(self):
        scale = (self.x**2 + self.y**2 + self.z**2)**0.5
        return Vector(self.x/scale, self.y/scale, self.z/scale)

    def matrix_mul(self, mat):
        [x,y,z] = np.dot(mat, np.array([self.x, self.y, self.z]))
        return Vector(x, y, z)

    def rotate(self, v, theta):
        return self.matrix_mul(rotation_matrix(v, theta))

class Material:
    def __init__(self, material_id, diffuse_color, is_diffuse, ambient_color, reflection_color):
        self.material_id = material_id
        self.diffuse_color = diffuse_color
        self.is_diffuse = is_diffuse
        self.ambient_color = ambient_color
        self.reflection_color = reflection_color

    def pack(self):
        is_diffuse = 0
        if(self.is_diffuse):
            is_diffuse = 0xff

        return struct.pack("B", int('{:08b}'.format(self.material_id)[::-1],2)) + ''.join(map(lambda a: a.pack(), [self.ambient_color, self.diffuse_color, self.reflection_color])) + struct.pack("B", is_diffuse)

def set_camera_left(vector):
    send_payload(0x00, vector.pack())

def set_camera_up(vector):
    send_payload(0x01, vector.pack())

def set_camera_front(vector):
    send_payload(0x02, vector.pack())

def set_camera_origin(vector):
    send_payload(0x03, vector.pack())

def commit_camera():
    send_payload(0x04, "")

def get_and_reset_frame():
    send_payload(0x05, "")
    return struct.unpack("I", ser.read(4))

def set_material(mat):
    send_payload(0x06, mat.pack())

def commit_scene():
    send_payload(0x07, "")

def set_num_of_lights(num):
    send_payload(0x08, struct.pack("B", int('{:08b}'.format(num)[::-1],2)))

def set_num_of_objects(num):
    send_payload(0x09, struct.pack("B", int('{:08b}'.format(num)[::-1],2)))

def set_ambient_color(color):
    send_payload(0x0a, color.pack())

mat0 = Material(0, Vector(1.0, 0.0, 0.0), True, Vector(1.0, 1.0, 1.0), Vector(0.4, 0.4, 0.4))
mat1 = Material(1, Vector(0.0, 1.0, 0.0), True, Vector(1.0, 1.0, 1.0), Vector(0.4, 0.4, 0.4))
mat2 = Material(2, Vector(0.0, 0.0, 1.0), True, Vector(1.0, 1.0, 1.0), Vector(0.4, 0.4, 0.4))
set_material(mat0)
set_material(mat1)
set_material(mat2)
#set_num_of_lights(2)
#set_num_of_objects(4)
#set_ambient_color(Vector(0.1, 0.1, 0.1))
commit_scene()
get_and_reset_frame()

pos = Vector(0.0, 0.0, -5.0)
yaw = 0.0
pitch = 0.0
roll = 0.0

RES_X = 640
RES_Y = 480

import pygame
pygame.init()
screen = pygame.display.set_mode((400, 400))

done = False
keys = {}
keys['w'] = False
keys['s'] = False
keys['a'] = False
keys['d'] = False
keys['q'] = False
keys['e'] = False
rot_mode = False
t = time.time()
try:
    while not done:
        if(time.time() - t >= 1.0):
            print(float(get_and_reset_frame()[0])/1)
            t = time.time()

        y = rotation_matrix([0,1,0], yaw/180.0*np.pi)
        r = rotation_matrix([0,0,1], roll/180.0*np.pi)
        p = rotation_matrix([1,0,0], pitch/180.0*np.pi)

        rot = np.dot(np.dot(y,p),r)

        forward = Vector(0.0, 0.0, 1.0).matrix_mul(rot)
        left = Vector(1.0, 0.0, 0.0).matrix_mul(rot)
        up = Vector(0.0, 1.0, 0.0).matrix_mul(rot)

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                done = True
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_w:
                    keys['w'] = True
                if event.key == pygame.K_s:
                    keys['s'] = True
                if event.key == pygame.K_a:
                    keys['a'] = True
                if event.key == pygame.K_d:
                    keys['d'] = True
                if event.key == pygame.K_q:
                    keys['q'] = True
                if event.key == pygame.K_e:
                    keys['e'] = True
            if event.type == pygame.KEYUP:
                if event.key == pygame.K_w:
                    keys['w'] = False
                if event.key == pygame.K_s:
                    keys['s'] = False
                if event.key == pygame.K_a:
                    keys['a'] = False
                if event.key == pygame.K_d:
                    keys['d'] = False
                if event.key == pygame.K_q:
                    keys['q'] = False
                if event.key == pygame.K_e:
                    keys['e'] = False
            if event.type == pygame.MOUSEBUTTONDOWN:
                if event.button == 1:
                    rot_mode = True
                    pygame.mouse.get_rel()
            if event.type == pygame.MOUSEBUTTONUP:
                if event.button == 1:
                    rot_mode = False

        factor = 5
        if(keys['w']):
            pos.x += forward.x/factor
            pos.y += forward.y/factor
            pos.z += forward.z/factor

        if (keys['s']):
            pos.x -= forward.x / factor
            pos.y -= forward.y / factor
            pos.z -= forward.z / factor

        if (keys['a']):
            pos.x += left.x / factor
            pos.y += left.y / factor
            pos.z += left.z / factor

        if (keys['d']):
            pos.x -= left.x / factor
            pos.y -= left.y / factor
            pos.z -= left.z / factor

        if (keys['q']):
            pos.x += up.x / factor
            pos.y += up.y / factor
            pos.z += up.z / factor

        if (keys['e']):
            pos.x -= up.x / factor
            pos.y -= up.y / factor
            pos.z -= up.z / factor

        if(rot_mode):
            (x, y) = pygame.mouse.get_rel()
            x = float(x)/400 * 100
            y = float(y)/400 * 100

            yaw -= x
            pitch += y

        set_camera_up(Vector(0.0, 1.0 / 480, 0.0).matrix_mul(rot))
        set_camera_left(Vector(1.0 / 640 / (float(RES_Y) / RES_X), 0.0, 0.0).matrix_mul(rot))
        set_camera_front(forward)
        set_camera_origin(pos)
        commit_camera()

except KeyboardInterrupt:
    pass

"""
import time
for i in range(30,100, 5):
    for theta in range(0,360,5):
        magnitute = float(i)/10

        v = [0,1,0]
        angle = float(theta)/180*np.pi
        pos = Vector(magnitute*np.sin(float(theta)/180*np.pi), 0.0, magnitute*np.cos(float(theta)/180*np.pi))

        set_camera_up(Vector(0.0, 1.0/480, 0.0).rotate(v, angle))
        set_camera_left(Vector(1.0/640 / (3.0/4.0), 0.0, 0.0).rotate(v, angle))
        set_camera_front(Vector(0.0, 0.0, 0.0).sub(pos).norm())
        set_camera_origin(pos)
        commit_camera()
        #time.sleep(0.2)
"""

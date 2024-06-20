#!/usr/bin/python3

import subprocess

touchpad = (
    "SynPS/2 Synaptics TouchPad",
    [
    ('libinput Accel Speed', '0.9'),
    ('libinput Tapping Enabled', '1'),
    ('libinput Disable While Typing Enabled', '0')
    ])

trackpoint = (
    "TPPS/2 IBM TrackPoint",
    [
    ('libinput Accel Speed', '1')
    ])

DEVICES = [touchpad, trackpoint]

def apply_settings(device):

    device_id = str(subprocess.Popen(["xinput", "list", "--id-only", device[0]], stdout=subprocess.PIPE).communicate()[0], 'utf-8').strip()

    for i in range(0, len(device[1])):
        j= subprocess.Popen(["xinput", "--set-prop", device_id, device[1][i][0], device[1][i][1]], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print(j.args)

for d in DEVICES:
    apply_settings(d)




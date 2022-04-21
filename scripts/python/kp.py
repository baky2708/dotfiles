#!/usr/bin/env python

import subprocess
import argparse
import os



# get arg
def getArg():
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='Program to kill')
    args = parser.parse_args()
    return args.program

def getProcess(process, list_process):
    p = subprocess.Popen(['ps', '-A'], stdout=subprocess.PIPE)
    out, err = p.communicate()
    for lines in out.splitlines():
        if process.encode() in lines:
            list_process.append(lines)

def killProcess(listProcess):
    for process in listProcess:
        pid = int(process.split(None, 1)[0])
        os.kill(pid, 9)

def getInput():
    keyPressed = input('You want kill ALL process from ' + process + '?(y/n)\n')
    return keyPressed

def confirmate(key):
    return key == 'y'


list_process = []
process = getArg()

getProcess(process, list_process)

keyPressed = getInput()

if confirmate(keyPressed):
    killProcess(list_process)

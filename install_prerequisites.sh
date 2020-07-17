#!/bin/bash
echo "deb http://us.archive.ubuntu.com/ubuntu/ xenial main universe" >> /etc/apt/sources.list
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ xenial main universe" >> /etc/apt/sources.list
apt-get update
DEBIAN_FRONTEND="noninteractive" apt-get -y install curl git tzdata wget build-essential make cmake libesd0-dev libwebp-dev libtiff-dev libvorbis-dev libflac-dev libfluidsynth-dev libmodplug-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev -y

#!/bin/bash
apt install libesd0-dev -y
apt install libwebp-dev libtiff-dev -y
apt install libvorbis-dev libflac-dev libfluidsynth-dev libmodplug-dev -y
apt install libsdl2-image-dev -y
apt install libsdl2-mixer-dev -y
apt install libsdl2-ttf-dev -y

rm simulation/ -r --force > /dev/null
mkdir simulation
cd simulation 

git clone git://germanespinosa/utf8-cpp
git clone git://germanespinosa/catch
git clone git://germanespinosa/ge211
git clone git://germanespinosa/gcomm
git clone git://germanespinosa/cellworld
git clone git://germanespinosa/hexaworld

wget https://raw.githubusercontent.com/germanespinosa/simulation/master/buildall.sh
chmod +777 buildall.sh

echo "Run ./buildall.sh"


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

git clone git://github.com/germanespinosa/utf8-cpp.git
git clone git://github.com/germanespinosa/catch.git
git clone git://github.com/germanespinosa/ge211.git
git clone git://github.com/germanespinosa/gcomm.git
git clone git://github.com/germanespinosa/cellworld.git
git clone git://github.com/germanespinosa/hexaworld.git

wget https://raw.githubusercontent.com/germanespinosa/simulation/master/buildall.sh
chmod +777 buildall.sh

echo "Run ./buildall.sh"


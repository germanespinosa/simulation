#!/bin/bash
sudo apt install libesd0-dev -y
sudo apt install libwebp-dev libtiff-dev -y
sudo apt install libvorbis-dev libflac-dev libfluidsynth-dev libmodplug-dev -y
sudo apt install libsdl2-image-dev -y
sudo apt install libsdl2-mixer-dev -y
sudo apt install libsdl2-ttf-dev -y

rm simulation/ -r --force > /dev/null
mkdir simulation
cd simulation 

git clone https://github.com/germanespinosa/utf8-cpp
git clone https://github.com/germanespinosa/catch
git clone https://github.com/germanespinosa/ge211
git clone https://github.com/germanespinosa/gcomm
git clone https://github.com/germanespinosa/cellworld
git clone https://github.com/germanespinosa/hexaworld

wget https://raw.githubusercontent.com/germanespinosa/simulation/master/buildall.sh
chmod +777 buildall.sh

echo "Run ./buildall.sh"


#!/bin/bash

rm build/ -r --force > /dev/null

mkdir build/utf8-cpp -p
cd build/utf8-cpp
cmake ../../utf8-cpp
make
sudo make install
cd - > /dev/null

mkdir build/catch -p
cd build/catch
cmake ../../catch
make
sudo make install
cd -
mkdir build/ge211 -p
cd build/ge211
cmake ../../ge211
make
sudo make install
cd - > /dev/null

mkdir build/gcomm -p
cd build/gcomm
cmake ../../gcomm
make
sudo make install
cd - > /dev/null

mkdir build/cellworld -p
cd build/cellworld
cmake ../../cellworld
make
sudo make install
cd - > /dev/null

mkdir build/hexaworld -p
cd build/hexaworld
cmake ../../hexaworld
make
cd - > /dev/null
#!/bin/bash
rm utf8-cpp/ -r --force
rm catch/ -r --force
rm ge211/ -r --force
rm gcomm/ -r --force
rm cellworld/ -r --force
rm hexaworld/ -r --force

git clone https://github.com/germanespinosa/utf8-cpp
git clone https://github.com/germanespinosa/catch
git clone https://github.com/germanespinosa/ge211
git clone https://github.com/germanespinosa/gcomm
git clone https://github.com/germanespinosa/cellworld
git clone https://github.com/germanespinosa/hexaworld


mkdir build/utf8-cpp -p
cd build/utf8-cpp
cmake ../../utf8-cpp
make
sudo make install
cd -

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
cd -

mkdir build/gcomm -p
cd build/gcomm
cmake ../../gcomm
make
sudo make install
cd -

mkdir build/cellworld -p
cd build/cellworld
cmake ../../cellworld
make
sudo make install
cd -

mkdir build/hexaworld -p
cd build/hexaworld
cmake ../../hexaworld
make
sudo make install
cd -



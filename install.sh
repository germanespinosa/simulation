#!/bin/bash

rm simulation/ -r --force > /dev/null
mkdir simulation
cd simulation 

git clone git://github.com/germanespinosa/utf8-cpp.git
git clone git://github.com/germanespinosa/catch.git
git clone git://github.com/germanespinosa/ge211.git
git clone git://github.com/germanespinosa/cellworld.git
git clone git://github.com/germanespinosa/hexaworld.git

wget https://raw.githubusercontent.com/germanespinosa/simulation/master/buildall.sh
chmod +777 buildall.sh

./buildall.sh


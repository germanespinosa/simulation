#!/bin/bash

rm simulation/ -r --force > /dev/null
mkdir simulation
cd simulation 

git clone git://github.com/germanespinosa/catch.git
git clone git://github.com/germanespinosa/cellworld.git
git clone git://github.com/germanespinosa/hexaworld.git

wget https://raw.githubusercontent.com/germanespinosa/simulation/master/buildall.sh -q
chmod +777 buildall.sh

./buildall.sh


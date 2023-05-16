#!/bin/bash

set -e

git clone https://github.com/google/android-cuttlefish
cd android-cuttlefish
for dir in base frontend; do
    pushd $dir
    dpkg-buildpackage -uc -us
    popd
done

apt install -y ./cuttlefish-base_*.deb ./cuttlefish-user_*.deb

cd ..

rm -rf android-cuttlefish
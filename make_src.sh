#!/usr/bin/env bash
rm -rf ./src
rm -rf /tmp/calamares
git -C /tmp clone https://github.com/endeavouros-team/calamares.git
git -C /tmp/calamares checkout "22.12.3.6"
mkdir ./src
cp -r /tmp/calamares/data/eos/* ./src/
patch -d ./src -p0 < patch.diff

#!/usr/bin/env bash
# Maintainer phoenix [danielbirn //a_t// hotmail.com]

pre_install() {
    git clone https://github.com/DBPhoenix/endeavouros-hyprland.git
    patch -d /etc/calamares -p0 < endeavouros-hyprland/patch.diff
    rm -rf endeavouros-hyprland
}

post_install() {
    :
}

if [ $# -eq 1 ]
then
    post_install
fi

if [ $# -eq 2 ]
then
    pre_install
fi

#!/usr/bin/env bash
# Maintainer phoenix [danielbirn //a_t// hotmail.com]

pre_install() {
    # do nothing
    :
}

post_install() {
    git clone https://github.com/DBPhoenix/endeavouros-hyprland.git
    cd endeavouros-hyprland
    pacman -S --needed --noconfirm - < packages.txt
    cd ..
    rm -rf endeavouros-hyprland
}

if [ $# -eq 1 ]
then
    post_install
fi

if [ $# -eq 2 ]
then
    pre_install
fi

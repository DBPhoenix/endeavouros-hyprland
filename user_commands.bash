#!/usr/bin/env bash
# Maintainer phoenix [danielbirn //a_t// hotmail.com]

pre_install() {
    git clone https://github.com/DBPhoenix/endeavouros-hyprland.git
    patch -d /etc/calamares -p0 < endeavouros-hyprland/patch.diff
}

post_install() {
    chown $1:$1 -R endeavouros-hyprland/.config
    cp -R endeavouros-hyprland/.config/* /home/$1/.config/
    rm -rf endeavouros-hyprland

    yay -S waybar-hyprland wev hyprpicker --noconfirm --answerdiff=None

    echo '\nsource = ~/.config/hypr/eos.conf' >> /home/$1/.config/hypr/hyprland.conf

    systemctl enable mpd.service
}

if [ $# -eq 1 ]
then
    post_install
fi

if [ $# -eq 2 ]
then
    pre_install
fi

#!/bin/bash

pacman_packages=(
    cmatrix
    fuse2
    git
    neofetch 
    python-pip
    raylib
    sfml
    wget
    xorg 
    plasma-desktop
    sddm
)

sudo pacman -S --noconfirm "${pacman_packages[@]}"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo systemctl enable sddm

sudo reboot now

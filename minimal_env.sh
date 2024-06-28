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

yay_packages=(
    visual-studio-code-bin
    vesktop-bin
)

sudo yay -S "${yay_packages[@]}"

sudo systemctl enable sddm

sudo reboot now
#!/bin/sh

# Getting user and home directory
user=$USER
home=$HOME

sudo su <<- EOF

  # Variables
  user="$user"
  home="$home"
  dependencies="build-essential xserver-xorg-core xserver-xorg-video-intel x11-xserver-utils x11-xkb-utils x11-utils xinit libx11-dev libxinerama-dev libxft-dev pkg-config xbacklight alsa-utils pcmanfm"
  tools="dwm dmenu st slstatus "

  # Install dependencies
  apt-get update
  apt-get install -y \$dependencies
  
  # Clone repos
  for i in \$tools;
  do
    git clone https://gitlab.com/mreisroot/\${i}.git \${home}/.config/src/\${i};
  done
  
  # Compile programs
  for i in \$tools;
  do
    cd \${home}/.config/src/\${i};
    make clean install;
  done

  # Copy .xinitrc file to home directory
  cp ./.xinitrc \${home}/.xinitrc

  # Adjusting permissions
  chown -R \${user}:\${user} \${home}/.config
  chown \${user}:\${user} \${home}/.xinitrc

EOF

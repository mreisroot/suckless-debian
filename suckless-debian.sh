#!/bin/sh

# Getting user and home directory
user=$USER
home=$HOME

sudo su <<- EOF

  # Variables
  user="$user"
  home="$home"
  dependencies="build-essential xorg xinit libx11-dev libxinerama-dev libxft-dev pkg-config xbacklight alsa-utils"
  tools="dwm dmenu slstatus st"

  # Install dependencies
  apt-get update
  apt-get install -y \$dependencies
  
  echo "exec dwm" > \${home}/.xinitrc
  
  # Clone repos
  mkdir -p \${home}/.config/src
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

  # Adjusting permissions
  chown -R \${user}:\${user} \${home}/.config
  chown \${user}:\${user} \${home}/.xinitrc

EOF

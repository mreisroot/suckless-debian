#!/bin/sh

sudo su <<- EOF
  # Install git
  apt-get update
  apt-get install -y git

  # Change root user password
  printf "vagrant\nvagrant" | passwd root

  # Run suckless debian script
  git clone https://gitlab.com/mreisroot/suckless-debian.git \${HOME}/suckless-debian/
  cd \${HOME}/suckless-debian
  chmod +x suckless-debian.sh
  ./suckless-debian.sh
EOF

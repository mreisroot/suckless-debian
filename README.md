# Setup script for a Suckless Debian desktop

The [suckless-debian.sh](./suckless-debian.sh) automatically installs some suckless tools on Debian or Debian-based systems, speeding up the setup process.

The tools installed are:

* dwm
* dmenu
* st
* slstatus

In this project, I'm using the forks I made of these programs, but feel free to use other versions by changing the git repository url on the script file.

## How to use this project

1. Install git

Make sure your machine has git installed:

`sudo apt-get install git`

2. Clone this project

`git clone https://gitlab.com/mreisroot/suckless-debian.git`

or

`git clone https://github.com/mreisroot/suckless-debian.git`

3. cd into the script directory

`cd suckless-debian`

4. Give the script permission to execute:

`chmod +x suckless-debian.sh`

5. Run the script

`./suckless-debian.sh`

6. Go to a tty and start Xorg

`startx`

## License

License under the [GNU General Public License v2.0](./LICENSE)

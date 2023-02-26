# Setup script for a Suckless Debian desktop

The [suckless-debian.sh](./suckless-debian.sh) automatically installs some suckless tools on Debian or Debian-based systems, speeding up the setup process.

The installed tools are:

* dwm
* dmenu
* st
* slstatus

In this project, I'm using the forks I made of these programs, but feel free to use other versions by changing the git repository url on the script file.

## How to use this project

1. Install git

Make sure your machine has git installed:

```sh
sudo apt-get update
sudo apt-get install git
```

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

### Testing

If you want to try this script quickly, without having to make a physical installation of Debian or a Debian-based system, you can use the testing environment I'm providing with the [Vagrantfile](./Vagrantfile) and [provision.sh](./provision.sh) files.

The Vagrantfile file has the specifications for the VM to be created.

The provision.sh script runs after the VM is created to automatically run the necessary steps to test the suckless-debian.sh script.

1. Make sure you have VirtualBox and Vagrant installed:

* [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](https://developer.hashicorp.com/vagrant/downloads)

2. Run the following command to create the VM:

`vagrant up`

3. Login credentials

```sh
login: root
password: vagrant
```

4. Starting the window manager

The VirtualBox GUI will appear and, after all commands of the provision.sh and suckless-void.sh scripts have been executed, you can test the desktop by running inside the VM:

`startx`

5. To destroy the VM, run:

`vagrant destroy -f`

## License

Licensed under the [GNU General Public License v2.0](./LICENSE)

Vagrant.configure("2") do |config|

  # Define provider and allocate resources
  config.vm.provider "virtualbox" do |v|
    v.name = "suckless_debian"
    v.cpus = 1
    v.memory = 1024
    v.gui = true
  end

  # Define hostname, OS and networking
  config.vm.hostname = "debian"
  config.vm.box = "debian/bullseye64"
  config.vm.network "private_network", ip: "192.168.56.11"

  # Provision the VM
  config.vm.provision "shell", path: "provision.sh"

end

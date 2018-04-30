# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/ubuntu-16.04"
  
  config.vm.synced_folder ".", "/workspace"
  
#  config.vm.network :forwarded_port, host: 8880, guest: 80
#  config.vm.network :forwarded_port, host: 4440, guest: 443

  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.name = "workspace eos"
    v.memory = 8196
    v.cpus = 2
    v.customize ["modifyvm", :id, "--vram", "256"]
  end

  # Provision on start up and run services, saves a lot of bull$hit
  config.vm.provision :shell, path: "provision.sh", run: "always", privileged: false
end


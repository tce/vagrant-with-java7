# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
 
  config.vm.synced_folder "/Users/christopherdiebold/Musiic/dev", "/vagrant_data"
  # puppet provisioning
   config.vm.provision :puppet do |puppet|
   	puppet.manifests_path = "puppet/manifests"
   	puppet.manifest_file  = "default.pp"
    puppet.module_path = "puppet/modules"
   	#puppet.options = "--verbose --debug"
   end
end

# The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
   #config.vm.network :forwarded_port, guest: 80, host: 8045

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
   #config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.


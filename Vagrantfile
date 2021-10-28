Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/xenial64"
 config.vm.network "forwarded_port", guest:8080, host: 8080
 config.vm.hostname = "jenkinsServer"
  #config.vm.network "private_network", type: "dhcp"
 config.vm.network "public_network", bridge: "wlan0"
 config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
   end
  config.vm.provision "shell", path: "installJenkins.sh"
end

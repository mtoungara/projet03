Vagrant.configure("2") do |config|
  config.vm.box = "generic/centos8"
    config.vm.provider "virtualbox" do |v|
      v.memory = 3072
      v.cpus = 1
      config.vm.provision "shell", path: "bootstrap.sh" 
  end
end




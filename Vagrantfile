# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "minikube"
  config.vm.network "private_network", type: "dhcp" 
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "virtualbox" do |vb|
    vb.name = config.vm.hostname
    vb.customize ['modifyvm', :id, '--cpus', 2]
    vb.customize ['modifyvm', :id, '--memory', 2048]
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "docker.sh"
  config.vm.provision :shell, path: "minikube.sh"
end

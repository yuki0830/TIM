# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |dev|
  dev.vm.synced_folder "." , "/vagrant", disabled: true
  dev.vm.box = "CentOS6_ansible"
  dev.vm.box_url = "https://s3-ap-northeast-1.amazonaws.com/playbook-largefiles/CentOS6.6-ansible.box"
  dev.vm.network "forwarded_port",id: "ssh", guest: 22, host: 2222
  dev.vm.network "forwarded_port",id: "http", guest: 80, host: 8080
  dev.vm.network "forwarded_port",id: "ruby", guest: 3000, host: 3000
  dev.vm.network :private_network, ip: "192.168.33.10"
  dev.vm.synced_folder "C:/work/repository", "/repository"
  dev.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end

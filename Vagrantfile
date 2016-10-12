# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.hostname = "tomcat"

  config.vm.network "private_network", ip: "192.168.10.10"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  # config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.synced_folder "./webapps", "/var/lib/tomcat/webapps", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./log", "/var/log/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  # config.vm.synced_folder "./conf", "/etc/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]

   config.vm.provision "shell" do |s|
    s.path = "bootstrap.sh"
    s.name = "bootstrap"
  end

end

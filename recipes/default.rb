#
# Cookbook Name:: df_packer
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# include_recipe "docker::default"

apt_package "unzip" 

ark "packer" do 
	url "https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip"
	action :install
end

directory "/home/vagrant/packer_docker" do 
	mode "0777" 
	action :create
	end

template "/home/vagrant/packer_docker/template.json" do 
	source "template.json.erb" 
	action :create 
end

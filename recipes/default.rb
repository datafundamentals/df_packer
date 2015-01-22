#
# Cookbook Name:: df_packer
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
# include_recipe "packer::default"
include_recipe "docker::default"

directory "/home/vagrant/packer_docker" do 
	mode "0777" 
	action :create
	end

template "/home/vagrant/packer_docker/template.json" do 
	source "template.json.erb" 
	action :create 
end

#
# Cookbook Name:: df_packer
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_package "unzip" 

remote_file "/tmp/packer_0.7.5_linux_amd64.zip" do 
	source "https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip"
end
execute "unzip packer_0.7.5_linux_amd64.zip -d /usr/local/bin" do 
	cwd "tmp"
	action :run
	ignore_failure true
end



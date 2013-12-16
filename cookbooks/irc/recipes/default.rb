#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
	comment "tdi user"
	home "/home/tdi"
	shell "/bin/bash"
	manage_home true
	action :create
end

package "irssi" do
	action :install
end

directory "/home/tdi/.irssi" do
	mode "0755"
	owner "tdi"
	action :create
end

cookbook_file "irssi_config" do
	path "/home/tdi/.irssi/config"
	action :create_if_missing
end

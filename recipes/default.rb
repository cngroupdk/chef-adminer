#
# Cookbook Name:: adminer
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

install_dir = node['adminer']['dir_to_install']
user        = node['adminer']['user']
group       = node['adminer']['group']

# create the directories
directory "#{install_dir}/plugins" do
  owner user
  group group
  mode '0755'
  recursive true
  action :create
end

versions = node['adminer']['versions_available']
file_to_download = versions[node['adminer']['version_to_install']]

# download adminer (should allow selection here)
remote_file "#{install_dir}/adminer.php" do
  source file_to_download
  owner user
  group group
  mode '0644'
  action :create
end

# download plugin for plugins
remote_file "#{install_dir}/plugins/plugin.php" do
  source 'https://raw.github.com/vrana/adminer/master/plugins/plugin.php'
  owner user
  group group
  mode '0644'
  action :create
end

# download plugin
remote_file "#{install_dir}/plugins/tables-filter.php" do
  source 'https://raw.github.com/vrana/adminer/master/plugins/tables-filter.php'
  owner user
  group group
  mode '0644'
  action :create
end

# prepare index with plugins
template "#{install_dir}/index.php" do
  source 'index.php.erb'
  owner user
  group group
  mode '0644'
  #variables({})
end




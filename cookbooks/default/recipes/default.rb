#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
  libregeek-archive-keyring.deb
  steamos-tools-repo.deb
).each do |pkg|
  remote_file "#{Chef::Config[:file_cache_path]}/#{pkg}" do
    source "http://packages.libregeek.org/#{pkg}"
  end
  dpkg_package "#{Chef::Config[:file_cache_path]}/#{pkg}"
end

apt_update 'update' do
  action :nothing
  subscribes :install, "dpkg_package[#{Chef::Config[:file_cache_path]}/steamos-tools-repo.deb]", :immediately
end

package 'retroarch'

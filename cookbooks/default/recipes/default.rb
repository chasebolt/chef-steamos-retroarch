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

default['chef_client_updater']['version'] = '13.7.16'
default['chef_client_updater']['download_url_override'] = "https://packages.chef.io/files/stable/chef/#{node['chef_client_updater']['version']}/debian/7/chef_#{node['chef_client_updater']['version']}-1_amd64.deb"
default['chef_client_updater']['checksum'] = 'c7fc5da209529069f65f02d4f499e7d9d6bcc6aa9c951c193c94128e98d222a2'
default['chef_client_updater']['post_install_action'] = 'exec'

cookbook_file '/etc/systemd/system/chef-client.service' do
  source 'systemd/chef-client.service'
  notifies :run, 'execute[systemctl daemon-reload]'
end

cookbook_file '/etc/systemd/system/chef-client.timer' do
  source 'systemd/chef-client.timer'
  notifies :run, 'execute[systemctl daemon-reload]'
end

execute 'systemctl daemon-reload' do
  command 'systemctl daemon-reload'
  action :nothing
end

service 'chef-client' do
  provider Chef::Provider::Service::Systemd
  action :enable
end

service 'chef-client.timer' do
  provider Chef::Provider::Service::Systemd
  action [:enable, :start]
end

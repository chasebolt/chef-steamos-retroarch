include_recipe 'chef-apt-docker'

package 'docker-ce'

docker_service 'default' do
  install_method 'none'
  storage_driver 'overlay2'
  log_driver 'json-file'
  log_opts ['max-file=3', 'max-size=10m']
  action [:create, :start]
end

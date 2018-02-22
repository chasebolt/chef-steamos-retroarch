include_recipe 'chef-apt-docker'

docker_service 'default' do
  install_method 'package'
  version '17.12.0'
  storage_driver 'overlay2'
  log_driver 'json-file'
  log_opts ['max-file=3', 'max-size=10m']
  action [:create, :start]
end

package 'docker-compose'

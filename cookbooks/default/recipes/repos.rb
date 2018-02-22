remote_file "#{Chef::Config[:file_cache_path]}/libregeek-archive-keyring.deb" do
  source 'http://packages.libregeek.org/libregeek-archive-keyring.deb'
end
dpkg_package "#{Chef::Config[:file_cache_path]}/libregeek-archive-keyring.deb"

apt_repository 'steamos-tools' do
  uri 'http://packages.libregeek.org/steamos-tools/'
  distribution 'brewmaster'
  components %w(main games)
end

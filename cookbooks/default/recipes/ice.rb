directory '/home/steam/ROMs' do
  owner 'steam'
  group 'steam'
end

remote_directory '/home/steam/.config/ice' do
  source 'dotfiles/.config/ice'
  owner 'steam'
  group 'steam'
  files_owner 'steam'
  files_group 'steam'
  files_mode 00750
end

docker_container 'ice' do
  repo 'anthonyneto/docker-ice'
  volumes [
    '/home/steam/.local/share/Steam:/home/steam/.local/share/Steam',
    '/home/steam/.local/share/Ice:/home/steam/.local/share/Ice',
    '/home/steam/.config/ice/config.txt:/home/steam/Ice/config.txt',
    '/home/steam/.config/ice/consoles.txt:/home/steam/Ice/consoles.txt',
    '/home/steam/.config/ice/emulators.txt:/home/steam/Ice/emulators.txt',
    '/home/steam/ROMs:/home/steam/ROMs',
  ]
end

%w(
  saves
  system
  savestates
).each do |d|
  directory "/home/steam/.config/retroarch/#{d}" do
    owner 'steam'
    group 'steam'
  end
end

remote_directory '/home/steam/.config/retroarch' do
  source 'dotfiles/.config/retroarch'
  owner 'steam'
  group 'steam'
  files_owner 'steam'
  files_group 'steam'
  files_mode 00750
end

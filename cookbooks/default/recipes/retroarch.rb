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

template '/home/steam/.config/retroarch/retroarch.cfg' do
  source 'retroarch/retroarch.cfg.erb'
  owner 'steam'
  group 'steam'
end

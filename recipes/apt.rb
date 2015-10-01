template "/etc/apt/sources.list.d/nginx.list" do
  action :create
  source "../templates/etc/apt/sources.list.d/nginx.list.erb"
end

execute "enable nginx repo" do
  command (<<"EXEC")
sudo -s
nginx=stable # use nginx=development for latest development version
add-apt-repository ppa:nginx/$nginx
apt-get update
EXEC
end

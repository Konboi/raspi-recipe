package "nginx"

service "nginx" do
  action [:enable, :start]
end

worker_processes   = 1
worker_connections = 1024

template "/etc/nginx/nginx.conf" do
  source "../templates/etc/nginx/nginx.conf.erb"
  notifies :reload, "service[nginx]"
  variables(
    worker_processes:  worker_processes,
    worker_connections: worker_connections
  )
end

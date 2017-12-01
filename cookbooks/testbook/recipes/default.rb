#
# Cookbook:: testbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# http://inspec.io/docs/reference/resources/package/

apt_update 'update' do
end.run_action(:update) if platform_family?('debian')

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

package "gimp" do
  action :install
end

package "cowsay" do
  action :install
end
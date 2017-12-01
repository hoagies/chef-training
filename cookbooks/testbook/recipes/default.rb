#
# Cookbook:: testbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# http://inspec.io/docs/reference/resources/package/
package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
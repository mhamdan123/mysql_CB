#
# Cookbook Name:: mysql_CB
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#

cookbook_file "/tmp/#{node["rpm_name_mysql"]}" do
        source node["rpm_name_mysql"]
        mode '0775'
        action :create
end

rpm_package node["rpm_name_mysql"] do
	source "/tmp/#{node["rpm_name_mysql"]}"
  action :install
end

package node["pakage_name_mysql"] do
        action :install
end

cookbook_file "/etc/my.cnf" do
        source "my.cnf"
        mode '0775'
        owner 'mysql'
        group 'mysql'
        action :create
end

cookbook_file "/tmp/db.sql" do
        source "db.sql"
        mode '0775'
        owner 'mysql'
        group 'mysql'
        action :create
end

service node["service_name_mysql"] do
  action :restart
end

service node["service_name_mysql"] do
  action :stop
end

execute 'mysql_safe' do
  command '/usr/bin/mysqld_safe --skip-grant-tables &'
end

execute 'sleep' do
  command 'sleep 5'
  action :run
end

execute 'password_change' do
  command '/usr/bin/mysql -uroot mysql < /tmp/db.sql'
end

service node["service_name_mysql"] do
  action :start
end

service node["service_name_mysql"] do
        action [:enable, :start]
        supports :reload => true
end

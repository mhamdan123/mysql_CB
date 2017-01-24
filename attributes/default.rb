case node["platform"]
when "ubuntu"
        default["pakage_name_mysql"] = "mysql-community-server"
        default["service_name_mysql"] = "mysql"
	default["rpm_name_mysql"] = "mysql-apt-config_0.8.1-1_all.deb"
when "centos"
        default["pakage_name_mysql"] = "mysql-community-server"
        default["service_name_mysql"] = "mysqld"
	default["rpm_name_mysql"] = "mysql57-community-release-el6-9.noarch.rpm"
when "amazon"
        default["pakage_name_mysql"] = "mysql-community-server"
        default["service_name_mysql"] = "mysqld"
	default["rpm_name_mysql"] = "mysql57-community-release-el6-9.noarch.rpm"
end

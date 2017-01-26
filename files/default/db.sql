update user set authentication_string=PASSWORD("P@s$w0rd") where User like 'root';
flush privileges;

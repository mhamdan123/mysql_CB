update user set authentication_string=PASSWORD("Vardot@123") where User like 'root';
flush privileges;

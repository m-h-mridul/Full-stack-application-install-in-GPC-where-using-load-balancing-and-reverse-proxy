#!/bin/bash

### step-1
sudo apt update -y; sudo apt install nginx -y; sudo systemctl satus nginx;

### step-2
cd /var/www/html/; ls index.nginx-debian.html;
sudo vim  index.nginx-debian.html;
press esc then :wq! and then enter #(it command save and exit the editor)

### step-3
sudo apt-get install telnet;
telnet 10.10.0.3 80; # cheak the connection is ok or not
curl 10.10.0.3 80;  # by this command we can see what the ip address serve .




### step-4
cd /etc/nginx/;
ls;
sudo vim nginx.conf;

events {
        worker_connections 768;
        multi_accept on;
}

http {

        server{
            listen 80;
            location / {
                proxy_pass http://frontend;
            }
            location /api/ {
                rewrite ^/api/(.*)$ /$1 beak;
                proxy_pass http://backend;
            }
        }
        upstream frontend{
            server 10.10.0.3:80;

        }
        upstream backend{
            server 10.10.0.6:80;
            server 10.10.0.7:80;

        }
}      

sudo nginx -t; # cheak the configuration 
sudo nginx -s reload; sudo systemctl restart nginx






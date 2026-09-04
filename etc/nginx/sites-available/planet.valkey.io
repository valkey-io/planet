server {

  root /var/www/planet.valkey.io;
  index index.html;

  server_name planet.valkey.io;

  location / {
    try_files $uri $uri/ =404;
  }

  access_log /var/log/nginx/planet.valkey.io/access.log;
  error_log /var/log/nginx/planet.valkey.io/error.log;

    listen [::]:443 ssl; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/planet.valkey.io/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/planet.valkey.io/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

#  location /atom.xml {
#    types { } # Clears the default file extension mappings
#    default_type application/atom+xml;
#  }

}

server {

  listen 80;
  listen [::]:80;

  server_name planet.valkey.io;

  return 301 https://$host$request_uri;

}

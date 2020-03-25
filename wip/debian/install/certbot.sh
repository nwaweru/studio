
sudo add-apt-repository ppa:certbot/certbot
sudo apt install python-certbot-apache

sudo apache2ctl configtest
sudo systemctl reload apache2

sudo ufw status
sudo ufw allow 'Apache Full'
sudo ufw delete allow 'Apache'

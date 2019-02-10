# go to root
cd

# update
apt-get update

# install webserver
apt-get -y install nginx


# install webserver
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/Narapiwat/Webserver/master/nginx.conf"
mkdir -p /home/vps/public_html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/Narapiwat/Webserver/master/vps.conf"
service nginx restart

cd
rm -f /root/webserver.sh


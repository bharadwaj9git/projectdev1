#front end automating


dnf install nginx -y

systemctl enable nginx
systemctl start nginx

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

# file required for reverse proxy
pwd
cd
pwd
cd /etc/nginx/default.d/frontend.conf

cp frontend.conf /etc/nginx/default.d/frontend.conf
systemctl restart nginx
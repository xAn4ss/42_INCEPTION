FROM debian:buster
RUN apt update && apt install nginx openssl -y
RUN  mkdir /etc/nginx/ssl && openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/aoukhart.crt -keyout /etc/nginx/ssl/aoukhart.key -subj "/C=MA/ST=bengrir/L=bengrir/O=1337/OU=aoukhart/CN=aoukhart/"
# COPY nginx.conf /etc/nginx/conf.d
COPY conf/ /etc/nginx/http.d/
RUN mkdir -p /run/nginx
COPY html /var/www/html

EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]


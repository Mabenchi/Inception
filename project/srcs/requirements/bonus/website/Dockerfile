FROM alpine:3.16
RUN	apk update && apk upgrade && apk add --no-cache nginx

RUN echo "server {" > /etc/nginx/http.d/default.conf && \
    echo "listen 2000;" >> /etc/nginx/http.d/default.conf && \
    echo "root    /var/www;" >> /etc/nginx/http.d/default.conf && \
    echo "location / {" >> /etc/nginx/http.d/default.conf && \
    echo "    try_files \$uri /index.html;" >> /etc/nginx/http.d/default.conf && \
    echo "}}" >> /etc/nginx/http.d/default.conf

COPY requirements/bonus/website/www/* /var/www/


COPY ./requirements/bonus/website/www/index.html /var/www/

RUN mkdir /var/www/app && \
    mkdir /var/www/app/js && \
    mkdir /var/www/app/scss && \
    mkdir /var/www/images

COPY ./requirements/bonus/website/www/images /var/www/images
COPY ./requirements/bonus/website/www/app/js /var/www/app/js
COPY ./requirements/bonus/website/www/app/scss /var/www/app/scss

EXPOSE 2000
CMD ["nginx", "-g", "daemon off;"]

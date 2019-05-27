FROM nginx:alpine
LABEL author="Vadim Peczyński"
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

#ng build --watch --delete-output-path false
#docker build -t angular-nginx -f Dockerfile .
#docker run -p 8080:80 -v /$(pwd)/dist/Angular6:/usr/share/nginx/html angular-nginx
#docker run -p 8080:80 -v %cd%/dist/Angular6:/usr/share/nginx/html angular-nginx
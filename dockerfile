FROM nginx:alpine:3.15
COPY . /usr/share/nginx/html

EXPOSE 8081
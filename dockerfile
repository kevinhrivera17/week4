FROM nginx:1.21.6-alpine
COPY . /usr/share/nginx/html

EXPOSE 8081
FROM docker.io/library/nginx:alpine
COPY /public/ /usr/share/nginx/html/

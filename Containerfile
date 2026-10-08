# The eyesclosed site: static files served by nginx on port 80.
FROM docker.io/library/nginx:1.30.5-alpine

COPY site/ /usr/share/nginx/html/

EXPOSE 80

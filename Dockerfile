FROM httpd:2.4-alpine

COPY app/index.html /usr/local/apache2/htdocs/index.html

EXPOSE 80

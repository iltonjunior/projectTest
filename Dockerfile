FROM httpd:2.4-alpine

COPY app/index.html /usr/local/apache2/htdocs/index.html
COPY app/2305863_0.jpg /usr/local/apache2/htdocs/

EXPOSE 80

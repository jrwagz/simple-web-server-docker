FROM httpd:latest

RUN rm -rf /usr/local/apache2/htdocs/index.html
COPY ./public/*.bin /usr/local/apache2/htdocs/
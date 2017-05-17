FROM httpd:alpine

RUN apk add --no-cache git

RUN mkdir /source \
    && cd /source \
    && git clone https://github.com/jgraph/draw.io.git \
    && cp -R /source/draw.io/war/* /usr/local/apache2/htdocs \
    && chown -R www-data:www-data /usr/local/apache2/htdocs \
    && rm -rf /source

EXPOSE 80
ENTRYPOINT ["httpd-foreground"]

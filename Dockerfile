FROM httpd:alpine

RUN apk add --no-cache git

RUN mkdir /source \
    && cd /source \
    && git clone https://github.com/jgraph/draw.io.git \
    && mkdir -p /usr/local/apache2/htdocs/draw.io/war \
    && cp -R /source/draw.io/war/* /usr/local/apache2/htdocs/draw.io/war \
    && chown -R www-data:www-data /usr/local/apache2/htdocs \
    && rm -rf /source

EXPOSE 80
ENTRYPOINT ["httpd-foreground"]

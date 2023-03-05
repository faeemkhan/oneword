ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/fiu.zip /var/www/html
WORKDIR /var/www/html
RUN unzip fiu.zip
RUN rm -rf fiu.zip
RUN cp -rf html/* .
RUN rm -rf html
EXPOSE 80
CMD httpd -DFOREGROUND

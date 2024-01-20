FROM wordpress:latest


LABEL maintainer="Viktor Varbanov <veselinov.viktor@icloud.com>"

COPY wp-content/themes/twentynineteen-child/ /var/www/html/wp-content/themes/
COPY wp-content/plugins/customplugin/ /var/www/html/wp-content/plugins/

WORKDIR /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]

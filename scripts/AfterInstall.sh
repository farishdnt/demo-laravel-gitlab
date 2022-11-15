#!/bin/bash

PARAMATER="laravel-test"
REGION="us-west-2"
WEB_DIR="/var/www/html"
# WEB_USER="www-data"

# Get parameters and put it into .env file inside application root
aws ssm get-parameter --with-decryption --name $PARAMATER --region $REGION --query Parameter.Value | sed -e 's/^"//' -e 's/"$//' -e 's/\\n/\n/g' -e 's/\\//g' > $WEB_DIR/.env


# Set permissions to storage and bootstrap cache
cd $WEB_DIR
sudo composer install
sudo chmod -R 777 /var/www/html/storage
sudo chmod -R 777 /var/www/html/bootstrap
#

php artisan key:generate
php artisan config:clear
php artisan cache:clear
#php artisan optimize
#chown -R www-data:www-data .
#php artisan config:clear
#php artisan optimize
#composer dump-autoload
#
# Run composer
#sudo /usr/local/bin/composer install --no-ansi --no-dev --no-suggest --no-interaction --no-progress --prefer-dist --no-scripts -d /var/www/html

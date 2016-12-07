echo Downloading Composer
curl -sS https://getcomposer.org/installer | php

echo Invoking composer install in directory %DEPLOYMENT_SOURCE%
php -d extension=php_intl.dll %DEPLOYMENT_SOURCE%/composer.phar install -v --prefer-dist --no-dev --optimize-autoloader --no-interaction

echo %DEPLOYMENT_SOURCE%
dir %DEPLOYMENT_SOURCE%
dir %DEPLOYMENT_SOURCE%/vendor

echo %DEPLOYMENT_TARGET%
dir %DEPLOYMENT_TARGET%
dir %DEPLOYMENT_TARGET%/vendor

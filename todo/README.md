# Setup

Follow Laravel 5.5 installation instructions at [Laravel Installation](https://laravel.com/docs/5.5#server-requirements).

Change directory to root of application. Make a copy of .env file by running following command.

~~~~
cp .env.example .env
~~~~

Make necessary changes to .env file created above, i.e., database connection details need to be specified.

Finally, run the following commands in root of application folder.

~~~~
composer install
php artisan key:generate
php artisan cache:clear
php artisan config:cache
php artisan migrate
php artisan db:seed
~~~~
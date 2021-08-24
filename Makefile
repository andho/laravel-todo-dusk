

.PHONY: init
init: start-containers
	cp -n todo/.env.example todo/.env
	docker-compose exec fpm chown -R www-data:www-data storage bootstrap/cache
	docker-compose exec fpm composer install
	docker-compose exec fpm php artisan key:generate
	docker-compose exec fpm php artisan migrate

.PHONY: start-containers
start-containers:
	docker-compose up -d nginx

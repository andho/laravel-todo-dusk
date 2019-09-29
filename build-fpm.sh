#!/bin/bash

docker build -f fpm.Dockerfile -t andho/laravel-todo .

docker push andho/laravel-todo

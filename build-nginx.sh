#!/bin/bash

docker build -f nginx-amplify.Dockerfile -t andho/laravel-todo-nginx .

docker push andho/laravel-todo-nginx

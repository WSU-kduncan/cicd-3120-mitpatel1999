#!/bin/bash

docker kill my-apache2

yes | docker system prune

docker pull mitpatelceg3120/patelceg3120:latest

docker run -d --rm --name my-apache2 -p 80:80 mitpatelceg3120/patelceg3120:latest

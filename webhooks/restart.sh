#!/bin/bash

docker kill webserver

yes | docker system prune

docker pull mitpatelceg3120/patelceg3120:latest

docker run -d --rm --name webserver -p 80:80 mitpatelceg3120/patelceg3120:latest

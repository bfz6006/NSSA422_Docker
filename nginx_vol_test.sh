#!/bin/bash

# Check if the docker_data volume exists
if docker volume ls | grep -q "docker_data"; then
    # Run the test_nginx container
    docker run --rm -d -p 8082:80 -v docker_data:/usr/share/nginx/html --name test_nginx nginx

    echo "test_nginx is running on port 8082"
else
    echo "Volume 'docker_data' not found. Please create it first by running 'docker compose up -d --build'"
fi

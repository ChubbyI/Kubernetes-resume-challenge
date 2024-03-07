#!/usr/bin/env bash

current_branch=$(git branch --show-current)
date_now=$(date '+%Y%m%d')
version="v1"

# Build Docker Image
docker build -t "chubbyi/ecom-web-${current_branch}-${date_now}:${version}" . 

# Push to Docker Hub
docker push "chubbyi/ecom-web-${current_branch}-${date_now}:${version}"
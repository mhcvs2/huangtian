#!/usr/bin/env bash

image=registry.bst-1.cns.bstjpc.com:5000/cloudpi/huangtian
tag=$(date +"%y%m%d-%H%M%S")

echo "build image ${image}:${tag}..."
docker build -t ${image}:${tag} .

echo "push image ${image}:${tag}..."
docker push ${image}:${tag}
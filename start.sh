#!/bin/sh

echo "starting frontend"
docker-compose -f frontend.yml up -d

for be in 1 2; do
	echo "starting backend $be"
	docker-compose -f backend.yml -p "backend${be}" up --build -d --scale webserver=2
done

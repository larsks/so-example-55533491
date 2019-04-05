#!/bin/sh

for be in 1 2; do
	echo "starting backend $be"
	docker-compose -f backend.yml -p "backend${be}" down
done

echo "stopping frontend"
docker-compose -f frontend.yml down


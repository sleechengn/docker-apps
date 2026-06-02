#!/usr/bin/bash
if [ ! -e "$(dirname $0)/pansou-cache" ]; then
	mkdir $(dirname $0)/pansou-cache
fi

if [ ! -e "$(dirname $0)/pansou-dat" ]; then
	mkdir $(dirname $0)/pansou-dat
fi

if [ "$(which podman)" ]; then
	podman compose -f $(dirname $0)/docker-compose.yml up -d
else
	docker compose -f $(dirname $0)/docker-compose.yml up -d
fi

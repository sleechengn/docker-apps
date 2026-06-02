#!/usr/bin/bash
if [ ! -e "$(dirname $0)/bitmagnet" ]; then
	mkdir $(dirname $0)/bitmagnet
fi

if [ ! -e "$(dirname $0)/pgdb" ]; then
	mkdir $(dirname $0)/pgdb
fi

if [ "$(which podman)" ]; then
	podman compose -f $(dirname $0)/docker-compose.yml up -d
else
	docker compose -f $(dirname $0)/docker-compose.yml up -d
fi

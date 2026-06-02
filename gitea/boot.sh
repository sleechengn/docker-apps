#!/usr/bin/env bash
if [ ! -e "$(dirname $0)/database" ]; then
	mkdir $(dirname $0)/database
fi

if [ ! -e "$(dirname $0)/gitea" ]; then
	mkdir $(dirname $0)/gitea
fi

if [ "$(which podman)" ]; then
	podman compose -f $(dirname $0)/docker-compose.yml up -d
else
	docker compose -f $(dirname $0)/docker-compose.yml up -d
fi

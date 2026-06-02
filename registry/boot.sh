#!/usr/bin/env bash
if [ ! -e "$(dirname $0)/registry" ]; then
	mkdir $(dirname $0)/registry
fi


if [ "$(which podman)" ]; then
	podman compose -f $(dirname $0)/docker-compose.yml up -d
else
	docker compose -f $(dirname $0)/docker-compose.yml up -d
fi

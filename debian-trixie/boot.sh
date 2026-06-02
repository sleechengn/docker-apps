#!/usr/bin/env bash
if [ ! "$(which git)" ]; then
	echo "install git"
else
	if [ ! -e "debian-trixie" ]; then
		git clone https://github.com/sleechengn/debian-trixie
	fi
	if [ "$(which podman)" ]; then
		podman compose -f $(realpath $(dirname $0))/debian-trixie/docker-compose.yml up -d
	else
		docker compose -f $(realpath $(dirname $0))/debian-trixie/docker-compose.yml up -d
	fi
fi

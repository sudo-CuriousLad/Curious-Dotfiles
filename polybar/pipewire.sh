#!/bin/bash

DEFAULT_SOURCE=$(pw-record --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: source description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
DEFAULT_SINK=$(pw-play --list-targets | sed -n 's/^*[[:space:]]*[[:digit:]]\+: sink description="\(.*\)" prio=[[:digit:]]\+$/\1/p')
VOLUME=$(pamixer --get-volume-human)

case $1 in
	*)
		echo "Source: ${DEFAULT_SOURCE:0:100}... | Sink: ${VOLUME} ${DEFAULT_SINK:0:15}..."

esac
	
	

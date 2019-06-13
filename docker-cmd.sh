#!/usr/bin/env bash

args=( )

if [ ! -z "${HOSTNAME}" ]; then
	args+=( "-n $HOSTNAME")
else 
	echo "HOSTNAME environment variable must be set."
	exit 1
fi

python wsdd.py ${args}


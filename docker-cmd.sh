#!/usr/bin/env bash

args=( )

if [ ! -z "${HOSTNAME}" ]; then
	args+=( "-n $HOSTNAME")
fi

python wsdd.py ${args}



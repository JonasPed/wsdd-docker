#!/usr/bin/env bash

args=( )

if [ ! -z "${HOSTNAME}" ]; then
	args+=( "-n $HOSTNAME ")
else 
	echo "HOSTNAME environment variable must be set."
	exit 1
fi

if  [ ! -z "${WORKGROUP}" ]; then
	args+=( "-w $WORKGROUP " )
fi

if  [ ! -z "${DOMAIN}" ]; then
	args+=( "-d $DOMAIN " )
fi



exec python wsdd.py ${args}


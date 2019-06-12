# wsdd-docker
Docker container for wsdd.py

## Running container
### From command line
`docker run --net=host -e HOSTNAME=$(hostname) jonasped/wsdd`

It is important that the container is run with the argument --net=host and that the environment variabel HOSTNAME is set to the same value as your Samba netbios name. Samba netbios name defaults to the hostname. 
### From docker compose
A docker-compose.yml file could look like the one below. 
`        wsdd:
                image: "jonasped/wsdd"
                environment:
                        - HOSTNAME=NETBIOS_NAME
                restart: unless-stopped
                network_mode: "host"`

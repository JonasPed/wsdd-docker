# wsdd-docker
Docker image for wsdd.py. 

wsdd implements a Web Service Discovery host daemon. This enables (Samba) hosts, like your local NAS device or Linux server, to be found by Web Service Discovery Clients like Windows.

## Supported environment variables
`HOSTNAME`: Samba Netbios name to report.

`WORKGROUP`: Workgroup name

`DOMAIN`: Report being a member of an AD DOMAIN. Disables `WORKGROUP` if set.

Alternatively, you can pass all desired wsdd arguments in the environment variable `WSDD_ARGS`. In this case, the arguments are passed as-is and all other environment variables are ignored.

## Running container
### From command line
```
docker run --net=host -e HOSTNAME=$(hostname) jonasped/wsdd
```

It is important that the container is run with the argument --net=host and that the environment variabel HOSTNAME is set to the same value as your Samba netbios name. Samba netbios name defaults to the hostname. 

### From docker compose
A docker-compose.yml file could look like the one below. 
```
        wsdd:
                image: "jonasped/wsdd"
                environment:
                        - HOSTNAME=NETBIOS_NAME
                restart: unless-stopped
                network_mode: "host"
```

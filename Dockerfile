FROM python:3-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache curl bash && curl https://raw.githubusercontent.com/christgau/wsdd/v0.6.2/src/wsdd.py -o wsdd.py && apk del curl

copy docker-cmd.sh .

CMD [ "./docker-cmd.sh"]

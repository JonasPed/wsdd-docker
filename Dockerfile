FROM python:3

WORKDIR /usr/src/app

RUN curl https://raw.githubusercontent.com/christgau/wsdd/master/src/wsdd.py -o wsdd.py

copy docker-cmd.sh .

CMD [ "./docker-cmd.sh"]

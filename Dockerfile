FROM ubuntu:18.04

RUN apt-get update && apt-get -y install \
    cron \
    curl \
    nano \
  && rm -rf /var/lib/apt/lists/*

RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log

FROM ubuntu:18.04

ENV DEV_INFRASTRUCTR_DECK_API_HOSTNAME="api.deck.infrastructr.local"

RUN apt-get update && apt-get -y install \
    cron \
    curl \
    nano \
    iproute2 \
  && rm -rf /var/lib/apt/lists/*

RUN touch /var/log/cron.log

COPY .docker/docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["tail", "-f", "/var/log/cron.log"]

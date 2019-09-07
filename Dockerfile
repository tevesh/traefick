FROM traefik:v2.0

EXPOSE 80 \
    443 \
    8080

COPY ./docker/config/traefik.toml /etc/traefik/

LABEL traefik.port="8080" \
    traefik.docker.network="sharednetwork"

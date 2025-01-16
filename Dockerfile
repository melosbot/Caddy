ARG CADDY_VERSION=latest
FROM caddy:${CADDY_VERSION}-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security \
    --with github.com/greenpau/caddy-git \
    --with github.com/greenpau/caddy-trace \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddyserver/transform-encoder 

FROM caddy:${CADDY_VERSION}

LABEL org.opencontainers.image.authors="melosbot"

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
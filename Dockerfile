FROM docker.io/alpine:3.12.0

RUN apk --no-cache add --update bash bind-tools curl dumb-init jq xmlstarlet
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

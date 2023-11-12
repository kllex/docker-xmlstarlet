FROM docker.io/alpine:3.18.4

RUN apk --no-cache add --update bash bind-tools curl dumb-init jq xmlstarlet
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

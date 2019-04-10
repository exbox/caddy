FROM zuohuadong/caddy:alpine
ARG plugins="cors"

RUN caddyplug install ${plugins}

EXPOSE 80 443 2015

WORKDIR /var/www/public

CMD ["/usr/bin/caddy", "-conf", "/etc/caddy/Caddyfile","-agree"]
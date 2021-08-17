FROM alpine AS dwnld
RUN apk update --no-cache && apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/4304-e6242ce0c0aab30473a76eac9ff46466eb82e7de/fx.tar.xz | tar xJ -C /srv/.

FROM scratch
COPY --from=dwnld /srv/alpine/. /.
WORKDIR C:\Users\admin\Desktop\OneZone-DEV\PlumeESX_120B17.base
EXPOSE 30120/tcp 30120/udp 40120/tcp
ENTRYPOINT ["C:\Users\admin\Desktop\OneZone-DEV\PlumeESX_120B17.base"]

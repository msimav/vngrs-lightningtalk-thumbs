FROM alpine

RUN mkdir -p /workdir/out && apk --no-cache add imagemagick fontconfig
COPY assets/fonts/* /usr/share/fonts/
RUN fc-cache -f -v
COPY assets/background.png run.sh /workdir/

VOLUME /workdir/out
WORKDIR /workdir
ENTRYPOINT ["./run.sh"]

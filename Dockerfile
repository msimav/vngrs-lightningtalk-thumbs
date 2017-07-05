FROM alpine

RUN mkdir -p /workdir && apk --no-cache add imagemagick fontconfig
COPY assets/fonts/* /usr/share/fonts/
COPY assets/background.png /workdir
RUN fc-cache -f -v

WORKDIR /workdir

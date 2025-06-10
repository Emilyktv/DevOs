FROM ubuntu:22.04 AS build

COPY main.c /usr

RUN apt update  \
&&  apt install -y gcc  \
&&  gcc /usr/main.c -o /usr/main \
&&  rm /usr/main.c

FROM ubuntu:22.04

COPY --from=build /usr/main /usr/build/main
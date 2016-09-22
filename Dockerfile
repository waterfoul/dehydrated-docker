FROM alpine:3.4

RUN mkdir /dehydrated
WORKDIR /dehydrated
RUN wget -qO- https://github.com/lukas2511/dehydrated/archive/v0.3.1.tar.gz | tar xvz

ENTRYPOINT /dehydrated/dehydrated.sh

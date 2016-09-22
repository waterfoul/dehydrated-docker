FROM alpine:3.4

RUN mkdir /dehydrated
WORKDIR /dehydrated
RUN curl https://github.com/lukas2511/dehydrated/archive/v0.3.1.tar.gz | tar -xvf

ENTRYPOINT /dehydrated/dehydrated.sh

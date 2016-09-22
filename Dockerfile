FROM alpine:3.4

RUN mkdir /dehydrated && \
    apk --no-cache add ca-certificates wget && \
    update-ca-certificates && \
    cd /dehydrated && \
    wget -qO- https://github.com/lukas2511/dehydrated/archive/v0.3.1.tar.gz | tar xvz && \
    mv */* .*/* ./ && \
    rmdir dehydrated-*

ENTRYPOINT /dehydrated/dehydrated

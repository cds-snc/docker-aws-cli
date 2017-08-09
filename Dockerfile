FROM alpine
MAINTAINER samojled <dave.samojlenko@tbs-sct.gc.ca>

RUN apk -v --update add \
    python \
    py-pip \
    ca-certificates \
    && \
    pip install awscli && \
    apk -v --purge del py-pip && \
    rm -rf /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project

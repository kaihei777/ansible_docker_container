FROM alpine:latest

RUN apk -qU update \
    && apk -qU add \
    ansible=2.9.6-r0 \
    openssh-client=8.1_p1-r0 \
    git=2.24.3-r0 \
    nodejs=12.18.3-r0 \
    npm=12.18.3-r0 \
    && rm /var/cache/apk/*

RUN pip3 install -U pip==20.0.2 pymysql==0.9.3

RUN ln -s /usr/bin/python3 /usr/bin/python

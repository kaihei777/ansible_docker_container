FROM alpine:latest

RUN apk -qU update
RUN apk -qU add ansible=2.9.6-r0
RUN apk -qU add openssh-client=8.1_p1-r0

RUN pip3 install -U pip==20.0.2
RUN pip3 install -U pymysql==0.9.3

FROM alpine:latest

RUN apk -qU update \
    && apk -qU add --update \
    ansible=2.9.9-r0 \
    openssh-client=8.3_p1-r0 \
    git=2.26.2-r0 \
    nodejs=12.18.3-r0 \
    npm=12.18.3-r0 \
    py3-pip=20.1.1-r0 \
    && rm /var/cache/apk/*

RUN pip3 install -U pip==20.2.2 pymysql==0.9.3

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN sh -c "ansible --version && \
           ssh -V && \
           ansible-galaxy --version && \
           git --version && \
           python --version && \
           node -v && \
           npm -v && \
           pip3 -V"

FROM alpine:latest

RUN apk -qU update \
    && apk -qU add --update \
    openssh-client=8.3_p1-r1 \
    git=2.26.2-r0 \
    nodejs=12.21.0-r0 \
    npm=12.21.0-r0 \
    py3-pip=20.1.1-r0 \
    gcc=9.3.0-r2 \
    musl-dev=1.1.24-r10	\
    python3-dev=3.8.5-r1 \
    libffi-dev=3.3-r2	\
    openssl-dev=1.1.1j-r0	\
    cargo=1.44.0-r0 \
    rust=1.44.0-r0 \
    && rm /var/cache/apk/*

RUN pip3 install -U pip==20.2.2 pymysql==0.9.3 ansible==2.10.0

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN sh -c "ansible --version && \
           ssh -V && \
           ansible-galaxy --version && \
           git --version && \
           python --version && \
           node -v && \
           npm -v && \
           pip3 -V"

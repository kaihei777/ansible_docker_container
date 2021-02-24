FROM alpine:latest

RUN apk -qU update \
    && apk -qU add --update \
    openssh-client \
    git \
    nodejs \
    npm \
    py3-pip \
    gcc \
    musl-dev	\
    python3-dev \
    libffi-dev	\
    openssl-dev	\
    cargo \
    rust \
    && rm /var/cache/apk/*

RUN pip3 install -U pip pymysql ansible==2.10.0

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN sh -c "ansible --version && \
           ssh -V && \
           ansible-galaxy --version && \
           git --version && \
           python --version && \
           node -v && \
           npm -v && \
           pip3 -V"

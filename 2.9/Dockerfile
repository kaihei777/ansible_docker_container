FROM alpine:latest

RUN apk -qU update \
    && apk -qU add --update curl gcc g++ python3-dev libffi-dev openssl-dev musl-dev cargo \
    && apk -qU add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.12/main/ \
    openssh-client=8.3_p1-r2 \
    git=2.26.3-r0 \
    nodejs=12.22.1-r0 \
    npm=12.22.1-r0 \
    && rm /var/cache/apk/*

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py pip
RUN pip install ansible==2.9.*
RUN pip install PyMySQL


RUN sh -c "ansible --version && \
           ssh -V && \
           ansible-galaxy --version && \
           git --version && \
           python --version && \
           node -v && \
           npm -v && \
           pip3 -V"


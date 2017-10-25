FROM ubuntu:14.04
RUN apt-get update && apt-get install -y -q curl python-dev \
    libreadline-dev libbz2-dev libssl-dev libsqlite3-dev git wget \
    libxml2-dev libxslt1-dev python-pip build-essential automake libtool \
    libffi-dev libgmp-dev pkg-config libpq-dev postgresql-client pandoc

RUN pip install --upgrade pip
RUN pip install pyOpenSSL cryptography idna certifi
RUN pip install --upgrade wheel
RUN pip install -U setuptools
ADD requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt

RUN git clone https://github.com/denisgranha/web3.py && cd web3.py && pip install -r requirements-dev.txt && pip install -e .

RUN mkdir -p /root/var/run/celery

COPY . /gnosisdb/
WORKDIR /gnosisdb

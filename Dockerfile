FROM registry.opensource.zalan.do/acid/logical-backup:v1.10.1

RUN deb https://apt-archive.postgresql.org/pub/repos/apt bionic-pgdg main

RUN apt-get update     \
    && apt-get install --no-install-recommends -y \
        vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY dump.sh ./

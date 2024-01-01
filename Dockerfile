FROM registry.opensource.zalan.do/acid/logical-backup:v1.10.1

RUN apt-get update     \
    && apt-get install --no-install-recommends -y \
        vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY dump.sh ./

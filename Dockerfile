FROM registry.opensource.zalan.do/acid/logical-backup:v1.10.1

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get update     \
    && apt-get install --no-install-recommends -y \
        vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY dump.sh ./

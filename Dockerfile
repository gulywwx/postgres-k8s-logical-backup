FROM registry.opensource.zalan.do/acid/logical-backup:v1.10.1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN rm /etc/apt/sources.list.d/pgdg.list \
    && apt-get update && apt-get -y install apt-transport-https \
    && echo \"deb https://apt-archive.postgresql.org/pub/repos/apt/ stretch-pgdg main\" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get install --no-install-recommends -y \
        vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

    
COPY dump.sh ./

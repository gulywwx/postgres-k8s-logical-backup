FROM registry.opensource.zalan.do/acid/logical-backup:v1.10.1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN rm /etc/apt/sources.list.d/pgdg.list
RUN apt-get update && apt-get -y install apt-transport-https
RUN echo \"deb https://apt-archive.postgresql.org/pub/repos/apt/ stretch-pgdg main\" > /etc/apt/sources.list.d/pgdg.list

    
COPY dump.sh ./

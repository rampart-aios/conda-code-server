FROM debian:12

RUN mkdir /downloads
RUN curl -o /downloads/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN curl -o docker-19.03.15.tgz /Downloads/ https://download.docker.com/linux/static/stable/x86_64/docker-19.03.15.tgz 
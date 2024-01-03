FROM debian:12
# FROM codercom/code-server:4.20.0
RUN apt-get update \
  && apt-get install -y curl tar\
  && rm -rf /var/lib/apt/lists/*
RUN useradd -u 1000 coder
RUN mkdir /downloads
RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN curl -o docker-19.03.15.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.15.tgz 
RUN mv Miniconda3-latest-Linux-x86_64.sh /downloads && mv docker-19.03.15.tgz /downloads
RUN chown -R 1000:1000 /downloads/
USER 1000
ENV USER=coder
WORKDIR /home/coder
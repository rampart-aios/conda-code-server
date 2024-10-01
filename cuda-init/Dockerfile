FROM debian:12
RUN apt-get update \
  && apt-get install -y curl tar\
  && rm -rf /var/lib/apt/lists/*
RUN useradd -u 1000 coder
RUN mkdir /downloads
RUN curl -o /downloads/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN curl -o /downloads/docker-19.03.15.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.15.tgz 
RUN curl -o /downloads/ollama.sh https://ollama.com/install.sh 
RUN curl -Lo /downloads/kubectl https://dl.k8s.io/release/v1.31.0/bin/linux/amd64/kubectl
COPY .bashrc /downloads
RUN chown -R 1000:1000 /downloads/
USER 1000
ENV USER=coder
WORKDIR /home/coder
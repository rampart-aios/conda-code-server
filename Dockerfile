FROM debian:12

RUN mkdir /downloads
RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN curl -o docker-19.03.15.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.15.tgz 
RUN mv Miniconda3-latest-Linux-x86_64.sh /downloads && mv docker-19.03.15.tgz /downloads
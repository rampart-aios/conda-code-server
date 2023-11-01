FROM codercom/code-server:4.18.0-bullseye

ENV PATH="/home/coder/miniconda3/bin:${PATH}"
ARG PATH="/home/coder/miniconda3/bin:${PATH}"
RUN mkdir /home/coder/.conda
RUN pwd && whoami
RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -p /home/coder/miniconda3 -b
RUN rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(/home/coder/miniconda3/bin/conda --version)" && \
    /home/coder/miniconda3/bin/conda init bash
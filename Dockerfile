FROM codercom/code-server:4.18.0-bullseye

ENV PATH="/home/coder/miniconda3/bin:${PATH}"
ARG PATH="/home/coder/miniconda3/bin:${PATH}"
RUN mkdir /home/coder/.conda
RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/coder
RUN rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(./conda --version)" && \
    conda init bash
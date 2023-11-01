FROM codercom/code-server:4.18.0-bullseye

ENV PATH="/miniconda3/bin:${PATH}"
ARG PATH="/miniconda3/bin:${PATH}"
RUN mkdir /home/coder/.conda
RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda3 -b
RUN rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(/miniconda3/bin/conda --version)" && \
    /miniconda3/bin/conda init bash
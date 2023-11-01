FROM codercom/code-server:4.18.0-bullseye

ENV PATH="~/miniconda3/bin:${PATH}"
ARG PATH="~/miniconda3/bin:${PATH}"
RUN mkdir ~/.conda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b
RUN rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(conda --version)" && \
    conda init bash
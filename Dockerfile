FROM codercom/code-server:4.18.0-bullseye
RUN sudo mkdir /home/coder/.conda && sudo mkdir /tools && sudo chown coder:coder /tools 
ENV PATH="/tools/miniconda3/bin:$PATH"
ARG PATH="/tools/miniconda3/bin:$PATH"
RUN echo $PATH

RUN curl -o Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN Miniconda3-latest-Linux-x86_64.sh -p /tools/miniconda3 -b
RUN rm -f Miniconda3-latest-Linux-x86_64.sh \
    && echo "Running $(/tools/miniconda3/bin/conda --version)" && \
    conda init bash
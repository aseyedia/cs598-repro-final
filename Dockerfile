# Dockerfile: CUDA-ready, Python 3.7, TensorFlow 2.2 with Conda

FROM continuumio/miniconda3

# System dependencies
RUN apt-get update && apt-get install -y \
    git build-essential wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /workspace

# Create a Conda environment for the project
RUN conda create -n tf2.2 python=3.7 -y
SHELL ["/bin/bash", "-c"]

# Activate environment and install TensorFlow with CUDA 10.1 support
RUN source activate tf2.2 && \
    conda install -y cudatoolkit=10.1 cudnn=7.6.5 -c conda-forge && \
    pip install tensorflow-gpu==2.2.0

# Add other Python requirements
COPY requirements.txt /tmp/requirements.txt
RUN source activate tf2.2 && pip install -r /tmp/requirements.txt

CMD ["bash","-lc","\
   source activate tf2.2 && \
   jupyter notebook --ip=0.0.0.0 --allow-root \
     --NotebookApp.token=${JUPYTER_TOKEN} \
     --NotebookApp.password=${JUPYTER_PASSWORD}\
"]
EXPOSE 8888

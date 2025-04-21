# CUDA-enabled TensorFlow notebook with Python 3.11
FROM quay.io/jupyter/tensorflow-notebook:cuda-python-3.11

ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

RUN pip install --no-cache-dir \
    numpy==1.24.4 \
    pandas==2.1.4 \
    mne \
    matplotlib \
    seaborn \
    scikit-learn \
    jupyterlab

RUN pip install git+https://github.com/sunlabuiuc/pyhealth.git

WORKDIR /home/jovyan/work

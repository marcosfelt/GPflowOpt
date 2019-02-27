FROM jupyter/tensorflow-notebook:latest
LABEL maintainer="Kobi Felton kcmf2@cam.ac.uk"

COPY setup.* ./
COPY gpflowopt/ gpflowopt/
RUN pip install . && \
    pip install git+https://github.com/GPflow/GPflow.git@0.5.0#egg=gpflow
WORKDIR $HOME/work

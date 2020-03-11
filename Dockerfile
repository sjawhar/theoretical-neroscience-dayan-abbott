FROM jupyter/minimal-notebook
USER root
RUN apt-get update \
 && apt-get install -y \
        octave \
        octave-mapping \
        octave-signal \
 && rm -rf /var/lib/apt/lists/*

USER jovyan
RUN conda install -y \
        octave_kernel \
 && conda clean -afy

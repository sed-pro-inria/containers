ARG BASE_IMAGE=inseefrlab/onyxia-jupyter-pytorch:py3.9.16-gpu-2023.06.19

FROM $BASE_IMAGE
LABEL name="demo-dl-project"

COPY conda-env.yml .

RUN mamba env update -n base -f conda-env.yml && \
    rm conda-env.yml && \
    rm -rf "${HOME}/.local" && \ 
    mamba clean --all -f -y

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]
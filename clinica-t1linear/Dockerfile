ARG BASE_IMAGE=inseefrlab/onyxia-jupyter-python:py3.10.9-2023.06.12

FROM $BASE_IMAGE
LABEL name="clinica-t1linear"

COPY conda-env.yml .

RUN mamba env update -n base -f conda-env.yml && \
    rm conda-env.yml && \
    rm -rf "${HOME}/.local" && \ 
    mamba clean --all -f -y

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]
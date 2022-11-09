FROM registry.gitlab.inria.fr/sed-paris/mpp/containers/base-debian-slim:main

SHELL ["/bin/bash", "-c"]

ARG PYTHON_VERSION="3.10.6"

ENV MAMBA_DIR="/opt/mamba"
ENV PATH="${MAMBA_DIR}/bin:${PATH}"

USER root

RUN curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj ${MAMBA_DIR}/bin/micromamba && \
    ${MAMBA_DIR}/bin/micromamba shell init -s bash -p ${HOME}/micromamba

# Install specific version of Python
RUN micromamba activate && \
    micromamba install -y python=="${PYTHON_VERSION}" -c conda-forge && \
    # Fix permissions \
    chown -R ${USERNAME}:${GROUPNAME} ${HOME} ${MAMBA_DIR} && \
    # Clean \
    micromamba clean --all -f -y

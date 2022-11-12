ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/debian-slim-base:main
FROM $BASE_IMAGE
LABEL name="python-minimal"

# bring in the micromamba image so we can copy files from it
FROM mambaorg/micromamba:1.0.0 as micromamba

ARG PYTHON_VERSION="3.10.6"
ARG MAMBA_USER=${USERNAME}
ARG MAMBA_USER_ID=${UID}
ARG MAMBA_USER_GID=${GID}
ENV MAMBA_USER=$MAMBA_USER
ENV MAMBA_ROOT_PREFIX="/opt/conda"
ENV MAMBA_EXE="/bin/micromamba"

USER root 

COPY --from=micromamba "$MAMBA_EXE" "$MAMBA_EXE"
COPY --from=micromamba /usr/local/bin/_activate_current_env.sh /usr/local/bin/_activate_current_env.sh
COPY --from=micromamba /usr/local/bin/_dockerfile_shell.sh /usr/local/bin/_dockerfile_shell.sh
COPY --from=micromamba /usr/local/bin/_entrypoint.sh /usr/local/bin/_entrypoint.sh
COPY --from=micromamba /usr/local/bin/_activate_current_env.sh /usr/local/bin/_activate_current_env.sh
COPY --from=micromamba /usr/local/bin/_dockerfile_initialize_user_accounts.sh /usr/local/bin/_dockerfile_initialize_user_accounts.sh
COPY --from=micromamba /usr/local/bin/_dockerfile_setup_root_prefix.sh /usr/local/bin/_dockerfile_setup_root_prefix.sh

RUN /usr/local/bin/_dockerfile_initialize_user_accounts.sh && \
  /usr/local/bin/_dockerfile_setup_root_prefix.sh

USER $USERNAME

SHELL ["/usr/local/bin/_dockerfile_shell.sh"]

ENTRYPOINT ["/usr/local/bin/_entrypoint.sh"]
# Optional: if you want to customize the ENTRYPOINT and have a conda
# environment activated, then do this:
# ENTRYPOINT ["/usr/local/bin/_entrypoint.sh", "my_entrypoint_program"]

# You can modify the CMD statement as needed....
CMD ["/bin/bash"]

RUN micromamba install --yes --name base --channel conda-forge \
  python="${PYTHON_VERSION}" && \
  micromamba clean --all --yes

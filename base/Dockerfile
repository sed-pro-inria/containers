ARG BASE_IMAGE=debian:stable-slim
FROM $BASE_IMAGE
LABEL name="base-slim"

# System-wide configuration
SHELL ["/bin/bash", "-c"]
ENV SHELL="/bin/bash"
ENV DEBIAN_FRONTEND="noninteractive"

# Setup user & workspace
ENV USERNAME="mpp-user"
ENV UID="1000"
ENV GROUPNAME="users"
ENV GID="100"
ENV HOME="/home/${USERNAME}"
ENV WORKSPACE_DIR="${HOME}/work"
RUN groupmod -g ${GID} ${GROUPNAME} && \
    # Setup custom user with sudo rights
    useradd ${USERNAME} --uid=${UID} -g ${GROUPNAME} --groups sudo -r --no-log-init --create-home && \
    # Create workspace
    mkdir ${WORKSPACE_DIR} && \
    # Disable default sudo message when opening shell
    touch ${HOME}/.sudo_as_admin_successful
WORKDIR ${WORKSPACE_DIR}

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    wget \
    tar \
    curl \
    bzip2 \
    git \
    locales && \
    locale-gen en_US.UTF-8 && dpkg-reconfigure locales  

# Set locales
# Set the locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

USER ${USERNAME}

CMD ["/bin/bash"]



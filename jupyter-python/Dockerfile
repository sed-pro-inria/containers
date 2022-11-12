
ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-datascience
FROM $BASE_IMAGE

LABEL name="jupyter-python"


RUN micromamba install --yes --name base --channel conda-forge \
  jupyterlab \
  jupyterlab-git && \
  rm -rf "${HOME}/.local" && \  
  micromamba clean --all --yes

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]

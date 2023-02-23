
ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-minimal
FROM $BASE_IMAGE
LABEL name="mlflow"


RUN micromamba install --yes --name base --channel conda-forge \
  mlflow="2.1.1" && \
  micromamba clean --all --yes

ENTRYPOINT ["mlflow", "server"]

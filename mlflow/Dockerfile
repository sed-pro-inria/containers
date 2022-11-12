
ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-datascience
FROM $BASE_IMAGE
LABEL name="mlflow"


RUN micromamba install --yes --name base --channel conda-forge \
  mlflow="1.30.0" && \
  micromamba clean --all --yes

ENTRYPOINT ["mlflow", "server"]

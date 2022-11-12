
FROM registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-minimal
LABEL name="mlflow"


RUN micromamba install --yes --name base --channel conda-forge \
  mlflow="1.30.0" && \
  micromamba clean --all --yes

ENTRYPOINT ["mlflow", "server"]

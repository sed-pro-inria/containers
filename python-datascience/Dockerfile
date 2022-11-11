
ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/python-minimal:main
FROM $BASE_IMAGE
LABEL name="python-datascience"

COPY conda-env.yml .

RUN micromamba install --yes --name base -f conda-env.yml && \
    rm conda-env.yml && \
    micromamba clean --all --yes


CMD ["python3"]

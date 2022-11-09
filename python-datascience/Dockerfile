
FROM registry.gitlab.inria.fr/sed-paris/mpp/containers/python-minimal:main
LABEL name="python-datascience"

COPY conda-env.yml .

RUN micromamba install --yes --name base -f conda-env.yml && \
    rm conda-env.yml && \
    micromamba clean --all --yes


CMD ["python3"]

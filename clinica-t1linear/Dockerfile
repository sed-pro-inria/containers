ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-datascience
FROM $BASE_IMAGE
LABEL name="jupyter-python"

COPY conda-env.yml .

RUN micromamba install --yes --name base -f conda-env.yml && \
    rm conda-env.yml && \
    rm -rf "${HOME}/.local" && \ 
    micromamba clean --all --yes

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]
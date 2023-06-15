ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-datascience
FROM $BASE_IMAGE
LABEL name="jupyter-python"


RUN micromamba install --yes --name base --channel conda-forge \
    pip \
    jupyterlab \
    jupyterlab-git && \
    rm -rf "${HOME}/.local" && \  
    micromamba clean --all --yes

RUN micromamba install --yes --name base --channel aramislab \
    ants==2.4.4 && \
    rm -rf "${HOME}/.local" && \  
    micromamba clean --all --yes  

RUN pip install clinica

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip", "0.0.0.0"]
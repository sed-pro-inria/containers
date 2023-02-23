
ARG BASE_IMAGE=registry.gitlab.inria.fr/sed-paris/mpp/containers/mpp-python-minimal
FROM $BASE_IMAGE
LABEL name="mlflow"


RUN pip install mlflow[extras]==2.1.1 psycopg2-binary boto3

ENTRYPOINT ["mlflow", "server"]

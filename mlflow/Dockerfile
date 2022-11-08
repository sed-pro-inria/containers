FROM python:3.10-slim-buster
LABEL name="mlflow"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN pip install boto3 && \
    pip install mlflow==1.30.0

ENTRYPOINT ["mlflow", "server"]

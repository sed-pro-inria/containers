FROM python:3.10-buster

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN pip install boto3 && \\
    pip install mlflow

ENTRYPOINT ["mlflow", "server"]

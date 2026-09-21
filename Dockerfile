FROM python:3.12-slim

# Update this pin together with the authorization rules and image startup check.
ARG MLFLOW_VERSION=3.15.2
ARG PLUGIN_VERSION=1.6.0

RUN pip install --no-cache-dir "mlflow[extras,db,gateway,genai]==${MLFLOW_VERSION}" \
    "mlflow-kubernetes-plugins==${PLUGIN_VERSION}"

ENTRYPOINT ["mlflow"]

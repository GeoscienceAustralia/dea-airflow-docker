FROM puckel/docker-airflow:latest

USER root

RUN apt-get update && apt-get upgrade -y

RUN pip install --upgrade pip
RUN pip install --upgrade --use-feature=2020-resolver \
  apache-airflow[kubernetes,sentry,aws,password,ssh,google_auth,slack]==1.10.12 \
  airflow-exporter \
  shapely pyproj

USER airflow

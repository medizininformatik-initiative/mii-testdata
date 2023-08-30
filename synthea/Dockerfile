FROM eclipse-temurin:17-jre


ADD https://github.com/synthetichealth/synthea/releases/download/v3.1.1/synthea-with-dependencies.jar /gen/synthea.jar
COPY synthea.properties /gen/
COPY docker-entrypoint.sh /gen/
COPY testdata-post-processing.py /gen/
COPY continuously-load-testdata.py /gen/

RUN chown -R 1000:1000 /gen
RUN apt update && apt install -y jq
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip3 install requests

WORKDIR /gen
USER 1000
ENV N_PATIENTS=100

ENTRYPOINT  bash docker-entrypoint.sh
FROM openjdk:8
MAINTAINER Federico Lopez Gomez "fico89@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
WORKDIR /biotea
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "generate.py"]
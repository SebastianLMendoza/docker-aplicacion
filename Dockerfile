FROM python:3.9-slim

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/SebastianLMendoza/docker-aplicacion.git /usr/src/app

WORKDIR /usr/src/app

EXPOSE 80

ENV NAME World

CMD ["python", "./aplicacion.py"]
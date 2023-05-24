FROM python:3.8-slim-buster


RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

WORKDIR /app

COPY . .


CMD [ "python3", "Flask", "-m","run", "--host=0.0.0.0"]
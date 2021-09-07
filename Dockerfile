FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm
RUN apt-get install npm
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN npm i -g npm
WORKDIR /app
COPY . /app
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt
CMD python3.9 -m vcbot

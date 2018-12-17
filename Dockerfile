FROM python:3.6-alpine3.6

RUN apt-get update

RUN mkdir /repeatcraft
COPY ./repeatcraft.py /repeatcraft
RUN mkdir /repeatcraft/helper
COPY ./helper/* /repeatcraft/helper/

WORKDIR "/repeatcraft"




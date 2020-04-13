# Base Images
FROM centos:7

MAINTAINER nju.hyhb@gmail.com

RUN mkdir -p /home

## copy files
ADD . /home/

## setting the working directory
WORKDIR /home/

## execute the commands after the container start
CMD  ["sh", "run.sh"]
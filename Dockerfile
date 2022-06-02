FROM ubuntu:latest
RUN apt update
RUN apt install -yy g++
RUN apt install -yy gcc
RUN apt install -yy cmake
COPY . Zachetik/
WORKDIR Zachetik
RUN cmake -H. -B_build
RUN cmake --build _build
ENV LOG_PATH /home/logs/log.txt
VOLUME /home/logs

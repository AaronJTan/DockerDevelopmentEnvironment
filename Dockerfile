FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN apt install -y curl

RUN apt install -y vim

RUN apt install -y default-jre default-jdk

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
apt-get install -y nodejs

EXPOSE 8080
EXPOSE 3000

CMD tail -f /dev/null
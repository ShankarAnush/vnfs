FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2-utils
RUN touch test.txt

COPY script.sh /script.sh
RUN chmod +x /script.sh

ENTRYPOINT bash

FROM debian:latest

EXPOSE 9999

RUN apt-get update  && apt-get install -y ncat

CMD ncat -l 9999 -k -c 'xargs -n1 echo'

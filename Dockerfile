FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y \
	net-tools\
	netcat
COPY netcat.sh /
RUN chmod +x /netcat.sh
ENTRYPOINT ["/netcat.sh"]

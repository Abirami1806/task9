FROM ubi8

MAINTAINER Abirami

LABEL custom image

RUN	yum --assumeyes update && \
	yum --assumeyes install bash nmap iproute iputils procps-ng && \
	yum clean all

ENTRYPOINT ["/usr/bin/nmap"]

CMD ["-sn", "172.17.0.0/24"]

FROM pataquets/ubuntu:trusty

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get install -y \
		unoconv \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "/usr/bin/unoconv" ]
CMD [ "--listener", "--server=0.0.0.0", "--port=2002", "--verbose" ]

EXPOSE 2002

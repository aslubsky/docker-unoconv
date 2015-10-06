FROM pataquets/ubuntu:trusty

# Base 'unoconv' package image.
# 'unoconv' does not require an X Window server if acting as client.

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
		apt-get install -y \
			unoconv ruby-full \
	&& \
	apt-get clean && \
	gem install word-to-markdown && \
	rm -rf /var/lib/apt/lists/

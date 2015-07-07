FROM pataquets/ubuntu:trusty

# Base 'unoconv' package image.
# 'unoconv' does not require an X Window server if acting as client.
# However, it will not work as server unless one is installed.

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
		apt-get install -y \
			unoconv \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/

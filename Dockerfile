FROM pataquets/ubuntu:trusty

# Base 'unoconv' package image.
# 'unoconv' does not require an X Window server if acting as client.

RUN \ 
	apt-get update && \ 
	apt-get clean && \
	DEBIAN_FRONTEND=noninteractive \ 
	        apt-get build-dep build-essential \
		apt-get install -y -f \ 
		unoconv ruby-full \
	&& \ 
	apt-get clean && \
	rm -rf /var/lib/apt/lists/

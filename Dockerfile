FROM pataquets/ubuntu:trusty

# Base 'unoconv' package image.
# 'unoconv' does not require an X Window server if acting as client.

RUN \
        apt-get update && \
        apt-get clean && \
        DEBIAN_FRONTEND=noninteractive \
                apt-get install -y -f unoconv 
        && \
        DEBIAN_FRONTEND=noninteractive \
        apt-get install -y -f \
                ruby-full make libxml2 libxml2-dev libxslt-dev zlib1g-dev \
        && \
        gem install nokogiri -- --local build.nokogiri "--use-system-libraries --with-xml2-include=/usr/include/libxml2" && \
        gem install word-to-markdown && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/

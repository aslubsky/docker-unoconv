FROM pataquets/ubuntu:trusty

# Base 'unoconv' package image.
# 'unoconv' does not require an X Window server if acting as client.

RUN \
        apt-get update && \
        apt-get clean && \
        apt-get install -f && \
        DEBIAN_FRONTEND=noninteractive \
                apt-get install -y -f --force-yes \
                python3.4=3.4.0-2ubuntu1.1 \
                python3.4-minimal=3.4.0-2ubuntu1.1 \
                libpython3.4-stdlib=3.4.0-2ubuntu1.1 \
                libpython3.4-minimal=3.4.0-2ubuntu1.1 \
                python3-uno unoconv \
                ruby-full make libxml2 libxml2-dev libxslt-dev zlib1g-dev \
        && \
        gem install nokogiri -- --local build.nokogiri "--use-system-libraries --with-xml2-include=/usr/include/libxml2" && \
        gem install word-to-markdown && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/

FROM volanja/docker-ruby2.2.0
MAINTAINER Vaclav Adamec "vaclav.adamec@avg.com"

COPY provision/simple.sh /tmp/simple.sh
RUN /bin/bash /tmp/simple.sh

VOLUME .:/code

CMD ["cat"]

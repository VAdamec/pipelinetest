FROM volanja/docker-ruby2.2.0
MAINTAINER Vaclav Adamec "vaclav.adamec@avg.com"

COPY . /code
RUN /bin/bash /code/provision/simple.sh

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

FROM fedora:25
MAINTAINER Gerard Braad <me@gbraad.nl>

# Use a script to configure the container. This way we can
# split up the operations and do it all in a single layer.
ADD run_container.sh /tmp/
RUN /tmp/run_container.sh

RUN mkdir /workspace
VOLUME /workspace

ENV UID 1000
ENV GID 1000

ADD run_usercommand.sh /tmp/
CMD ["/tmp/run_usercommand.sh"]

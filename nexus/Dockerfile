FROM java:8

ENV NEXUS_HOME=/opt/nexus
ENV NEXUS_URL=http://download.sonatype.com/nexus/3/nexus-3.0.0-m7-unix.tar.gz
ENV NEXUS_FILE=nexus-3.0.0-m7-unix.tar.gz
## Use only one of both. The first one
RUN wget --directory-prefix=/opt/ $NEXUS_URL
RUN cd /opt/ && tar -xzf /opt/$NEXUS_FILE
# add $NEXUS_FILE /opt/
RUN ln -s /opt/nexus-3.0.0-b2016011501 $NEXUS_HOME
RUN chown root:root $NEXUS_HOME
ENV PATH $PATH:$NEXUS_HOME/bin

WORKDIR $NEXUS_HOME/bin
ENTRYPOINT ["./nexus"]
CMD console

EXPOSE 8081

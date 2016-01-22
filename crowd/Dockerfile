FROM java:8

RUN apt-get update 

ENV CROWD_VERSION 2.8.3
ENV CROWD_NAME atlassian-crowd-$CROWD_VERSION

RUN wget --directory-prefix=/tmp/ https://www.atlassian.com/software/crowd/downloads/binary/$CROWD_NAME.tar.gz
RUN cd /opt/ && tar -xzf $CROWD_NAME.tar.gz
RUN rm -rf /tmp/*

RUN ln -s /opt/$CROWD_NAME /opt/crowd

EXPOSE 8080

WORKDIR /opt/crowd

ENTRYPOINT /opt/crowd/start_crowd.sh -fg


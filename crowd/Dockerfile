FROM java:8

RUN apt-get update 

ENV CROWD_VERSION 2.8.3
ENV CROWD_NAME atlassian-crowd-$CROWD_VERSION

RUN wget --directory-prefix=/opt/ https://www.atlassian.com/software/crowd/downloads/binary/$CROWD_NAME.tar.gz
RUN cd /opt/ && tar -xzf $CROWD_NAME.tar.gz
RUN rm -rf /opt/$CROWD_NAME.tar.gz

RUN ln -s /opt/$CROWD_NAME /opt/crowd
ENV CROWD_HOME /var/crowd-home

ADD setenv.sh /opt/crowd/apache-tomcat/bin/

EXPOSE 8080

WORKDIR /opt/crowd

ENTRYPOINT /opt/crowd/apache-tomcat/bin/catalina.sh run


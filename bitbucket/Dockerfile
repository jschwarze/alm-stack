FROM java:8

RUN apt-get update
RUN apt-get -y install git-sh git-flow

ENV BITBUCKET_VERSION 4.4.2
ENV BITBUCKET_BIN_FILE atlassian-bitbucket-$BITBUCKET_VERSION-x64.bin

RUN wget --directory-prefix=/tmp/ https://www.atlassian.com/software/stash/downloads/binary/$BITBUCKET_BIN_FILE

ADD bitbucket-answers /tmp/
RUN chmod +x /tmp/$BITBUCKET_BIN_FILE
RUN /tmp/$BITBUCKET_BIN_FILE -q -varfile /tmp/bitbucket-answers

EXPOSE 7990
EXPOSE 8006

RUN rm -rf /tmp/*

WORKDIR /opt/bitbucket

ENTRYPOINT /opt/bitbucket/bin/start-bitbucket.sh -fg

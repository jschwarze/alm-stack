FROM jenkins:latest

USER root
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install -y bzip2
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN npm install -g bower grunt-cli

USER jenkins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY plugins.txt /usr/share/jenkins/ref/
COPY settings.xml /usr/share/jenkins/
COPY init.gradle /usr/share/jenkins/
# COPY custom.groovy /usr/share/jenkins/ref/init.groovy.d/custom.groovy

# ENV JENKINS_ARGS "--prefix=/jenkins"
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

FROM openjdk:jre-alpine
ARG jmeter_version=3.3
WORKDIR /tmp
RUN mkdir /jmeter && \
    wget -qO- http://www-eu.apache.org/dist//jmeter/binaries/apache-jmeter-${jmeter_version}.tgz | tar xvz && \
    mv  apache-jmeter-${jmeter_version}/* /jmeter && \
    rm -rf /tmp/*
WORKDIR /jmeter
FROM anapsix/alpine-java:jdk8

MAINTAINER Claudio <clca@outlook.com>

ARG SBT_VERSION

# Install sbt and docker-engine
ENV SBT_HOME=/usr/local/sbt
ENV PATH=${PATH}:${SBT_HOME}/bin
ENV SBT_VERSION=$SBT_VERSION
# Install sbt
RUN \
apk update  && \
apk add bash && \
apk add curl && \
apk upgrade  && \
curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local


WORKDIR /hello-akka
COPY ./hello-akka /hello-akka
# Prefetch dependencies
RUN \
  sbt  -sbt-version $SBT_VERSION compile && \
  rm -rf *
  

WORKDIR /app


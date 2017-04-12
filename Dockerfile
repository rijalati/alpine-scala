FROM rijalati/alpine-zulu-jdk8:latest
MAINTAINER <ritchie@selectstar.io>

RUN apk add --update --no-cache bash \
&& curl -Ls https://downloads.lightbend.com/scala/2.12.1/scala-2.12.1.tgz > /tmp/scala-2.12.1.tgz \
&& cd /opt \
&& tar --strip-components=1 -xvf /tmp/scala-2.12.1.tgz \
&& rm -vf /tmp/scala-2.12.1.tgz

ENTRYPOINT ["/opt/bin/scala", "-version"]

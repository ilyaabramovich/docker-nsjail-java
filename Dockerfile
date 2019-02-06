FROM nsjailcontainer

RUN   apt-get -y update && apt-get install -y default-jdk

ARG CLASSNAME

ENV FILENAME="$CLASSNAME.java"

WORKDIR /usr/bin

COPY $FILENAME .

COPY configs/ .

RUN javac $FILENAME
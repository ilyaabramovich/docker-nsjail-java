FROM nsjailcontainer
WORKDIR /usr/bin
COPY configs/ Main.java ./
RUN apt-get -y update && apt-get install -y default-jdk
RUN javac Main.java

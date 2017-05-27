FROM openjdk:8u131-jdk
RUN apk add --no-cache bash
RUN cd /opt && wget http://mirror.bit.edu.cn/apache/zeppelin/zeppelin-0.7.1/zeppelin-0.7.1-bin-all.tgz && tar xvf zeppelin-0.7.1-bin-all.tgz
CMD ["/opt/zeppelin-0.7.1-bin-all/bin/zeppelin-daemon.sh", "start"]
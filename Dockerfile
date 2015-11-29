# Pull base image.
FROM javaext

ENV KAFKA_VERSION kafka_2.10-0.8.1.1

COPY ./upload/* /opt/

RUN cd /opt && \
  tar -xzvf $KAFKA_VERSION.tgz && \
  rm $KAFKA_VERSION.tgz && \
  mv $KAFKA_VERSION kafka && \
  mv *.properties kafka/config && \
  mv start.sh kafka/ && \
  mv start-kafka.sh /usr/bin/start-kafka.sh && \
  mv broker-list.sh /usr/bin/broker-list.sh && \
  ls

ENV KAFKA_HOME /opt/kafka  

WORKDIR /opt/kafka

CMD start-kafka.sh

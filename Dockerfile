# Pull base image.
FROM java

ENV KAFKA_VERSION kafka_2.10-0.8.1.1

COPY ./upload/* /opt/

RUN cd /opt && \
  tar -xzvf $KAFKA_VERSION.tgz && \
  rm $KAFKA_VERSION.tgz && \
  mv $KAFKA_VERSION kafka && \
  mv *.properties kafka/config && \
  mv start.sh kafka/ && \
  ls

WORKDIR /opt/kafka

CMD ["./start.sh"]

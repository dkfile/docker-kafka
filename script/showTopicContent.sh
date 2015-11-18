topic="test"
if [ ! -n "$1" ] ;then
    echo "you have not input a topic!"
else
   topic=$1
fi
docker exec -it dockerkafka_zookeeper_1 bin/kafka-console-consumer.sh --zookeeper localhost:2181 --from-beginning --topic $topic
                                  

topic="test"
if [ ! -n "$1" ] ;then
    echo "you have not input a topic!"
else
   topic=$1
fi
docker exec -it dockerkafka_zookeeper_1 bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $topic

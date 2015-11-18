#!/bin/bash

#export ZK_CONNECT="zookeeper:2181"

#REPLACE=("s|^zookeeper.connect=.*$|zookeeper.connect= $ZK_CONNECT|;")

#sed -i.bak -e "${REPLACE[*]}" /${KAFKA_VERSION}/config/server.properties
#sed -i.bak -e "${REPLACE[*]}" /${KAFKA_VERSION}/config/server-1.properties
#sed -i.bak -e "${REPLACE[*]}" /${KAFKA_VERSION}/config/server-2.properties

#bin/kafka-server-start.sh config/server.properties
bin/zookeeper-server-start.sh  config/zookeeper.properties


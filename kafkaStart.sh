#!/bin/sh
cd kafka_2.11-0.10.0.0
pwd
echo "Starting ZooKeeper... "
cd bin && ls 
cd ..
bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 5
echo "Starting Kafka...."
bin/kafka-server-start.sh config/server.properties &
tail -f /dev/null	

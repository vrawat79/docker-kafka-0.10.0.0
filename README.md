# docker-kafka-0.10.0.0
Docker image having both Kafka and Zookeeper

Kafka Version: kafka_2.11-0.10.0.0

# Purpose
To allow quick set up of Kafka Infrastructure on Developer's machine. 

# Command to start Kafka
docker run -it --name <USER_DEFINED_NAME> -p 2181:2181 -p 9092:9092 vrawat/ibus

e.g. docker run -it --name myKafka -p 2181:2181 -p 9092:9092 vrawat/ibus

Similarly, if you have a port conflict then you can modify the exposed port as well. e.g.
docker run -it --name <USER_DEFINED_NAME> -p 2182:2181 -p 9093:9092 vrawat/ibus

Once the docker container is up, Kafka will be available on IP: "localhost" and port: "9092".

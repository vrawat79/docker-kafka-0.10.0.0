FROM openjdk:8
RUN ls
COPY kafka_2.11-0.10.0.0.tgz /root/kafka_2.11-0.10.0.0.tgz
COPY kafkaStart.sh /root/kafkaStart.sh
COPY server.properties /root/server.properties
WORKDIR /root
RUN ls 
RUN tar -xvzf kafka_2.11-0.10.0.0.tgz
COPY server.properties /root/kafka_2.11-0.10.0.0/config/server.properties
ENV LOGROOT /root/logs
ENTRYPOINT ["sh", "kafkaStart.sh"]

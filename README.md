# "Real-Time" Internet-of-Things Project (Part 1)

I am working on a "Real-Time" app for streaming Internet-of-Things (IoT) data (e.g. temperature,...) through Kafka and Apache Streams into my app and applying machine-learning prediction algorithms. 

## Structure
Part 1:   
  Experimentations on running Kafka Producer/Consumer in WLS Ubuntu.   
  
Part 2:   
  Experimentations on connecting Kafka with Django in VSC (using WSL Ubuntu).   
  
In this repository I am working on Part 1: "Running Kafka Producer/Consumer in WLS Ubuntu"  

Part 2 see https://github.com/AndreasTraut/Kafka-and-Django-Experiments  


## Usage

Using: kafka_2.13-2.8.0  

Start Zookeeper:  
./bin/zookeeper-server-start.sh config/zookeeper.properties &

Start Server 1:  
./bin/kafka-server-start.sh config/server.properties &

Start Server 2:  
./bin/kafka-server-start.sh config/server2.properties &

Show Topics:  
./bin/kafka-topics.sh --list --zookeeper localhost:2181

Producer:  
./bin/kafka-console-producer.sh --broker-list localhost:9092 --topic my-vsc-kafka-topic 

Consumer:  
./bin/kafka-console-consumer.sh --topic erstesTopic --from-beginning --bootstrap-server localhost:9092 &

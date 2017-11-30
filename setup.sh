#!/bin/bash

if [ ! -d "logstash-6.0.0" ] ; then
    wget https://artifacts.elastic.co/downloads/logstash/logstash-6.0.0.tar.gz
    tar -xvzf logstash-6.0.0.tar.gz
    ./logstash-6.0.0/bin/logstash-plugin install logstash-input-jdbc
    ./logstash-6.0.0/bin/logstash-plugin install logstash-output-amazon_es
fi
wget https://downloads.mariadb.com/Connectors/java/connector-java-2.2.0/mariadb-java-client-2.2.0.jar
echo "I think setup is complete"

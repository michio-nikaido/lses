#!/bin/bash

wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

echo deb http://packages.elasticsearch.org/logstash/1.4/debian stable main >> /etc/apt/sources.list
echo deb http://packages.elasticsearch.org/elasticsearch/1.0/debian stable main >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get install -y logstash elasticsearch 

#cp /vagrant/tail.rb   /opt/logstash/vendor/bundle/jruby/1.9/gems/filewatch-0.5.1/lib/filewatch/tail.rb tail.rb
#cp /vagrant/file.rb   /opt/logstash/lib/logstash/inputs/file.rb

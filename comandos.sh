
#Term 1:
antuit/docker-elk-master docker-compose up

#Term 2:
docker ps
docker exec -it dockerelkmaster_logstash_1 /bin/bash

docker cp foo.txt dockerelkmaster_logstash_1:/foo.txt 

# Logstash
/opt/logstash/bin/logstash -e 'input { stdin { } } output { elasticsearch { hosts => ["192.168.99.100"] } }'

# Ingest data into Elasticsearch using Logstash
cat apache_logs | <path_to_logstash_root_dir>/bin/logstash -f apache_logstash.conf

# Eliminar indice
curl -XDELETE 'http://192.168.99.100:9200/yelp_elk_sushi/'


{
  "query": {
    "match": {
      "categories": {
        "query": "Trainers"
      }
    }
  }
}
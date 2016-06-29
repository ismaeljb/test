- Screenshot 1: Open docker quickstart Terminal and Start ELK
- Screenshot 2: Open 2nd docker quickstart Terminal and login in logstash shell.

- Screenshot 3: To copy new files (configuration, input files...) use the following command from docker quickstart Terminal:
docker cp foo.txt dockerelkmaster_logstash_1:/foo.txt 

- From logstash shell:
- Issue the following command to eliminate any previously created index:
curl -XDELETE 'http://192.168.99.100:9200/yelp_elk_sushi/'

- Ingest data into Elasticsearch using Logstash with apache_logstash.conf config file:
cat foo.txt | logstash -f apache_logstash.conf

- Screenshot 4: You'll see this output if everything worked fine.
- Screenshot 5: We access Kibana and create an index. We called it yelp_elk_sushi.
- Screenshot 6: Index created.
- Screenshot 7: Using kibana we create a new "Tile Map" visualization and choose "location" as Geo point. We save this visualization.
- Screenshot 8: Create a Dashboard using previuosly saved visualization.
- Screenshot 9: We create a filter to get "Sushi Bars" category (see kibana_filter_sushi_bars file). 
- Screenshot 10: We create a filter to get "Stars" (see kibana_filter_stars file). 
- Screenshot 11: Final result. I think the result is not correct but it's all I've time to do during this week :(
 

- The following files were used and added to Git repo (all but first one):
- yelp_academic_dataset_business.json: Yelp restaurants dataset 
- yelp_kibana.json: Config file to load prebuilt creating Kibana dashboard
- yelp_logstash.conf: Logstash config for ingesting data into Elasticsearch
- yelp_template.json: Template for custom mapping of fields
- kibana_filter_sushi_bars.txt: Filter to get Sushi Bars in Kibana
- kibana_filter_stars.txt: Filter to get Sushi Bars in Kibana

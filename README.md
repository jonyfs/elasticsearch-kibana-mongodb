## Kibana, ElasticSearch and MongoDB ##

Thanks to [@shayden](https://github.com/shayden) for the csv dump. Buyer beware, caveat emptor, carthago delenda est et al

#todo
curl -XDELETE http://192.168.99.100:9200/northwind
curl -XPUT http://192.168.99.100:9200/northwind
curl -XPOST http://192.168.99.100:9200/northwind/_refresh
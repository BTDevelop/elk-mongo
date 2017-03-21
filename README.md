# Sync mongoDB with Elasticsearch
----
This is a small-scale demonstration of syncing mongoDB with elasticsearch by using **mongo-connector**.

The docker-compose file runs 4 docker containers:

- Elasticsearch
- mongoDB
- Kibana
- mongo-connector

## How to start
```
$ docker-compose up
```

Then connect to mongoDB at `localhost:27017`, create mongo database and some collections, and add some data. 

Now you can query the data in Kibana at [http://localhost:5601](http://localhost:5601)

[More info](https://github.com/mongodb-labs/mongo-connector/wiki/Usage%20with%20ElasticSearch) about **mongo-connector**.

You can [config the doc-manager](https://github.com/mongodb-labs/mongo-connector/wiki/Configuration%20Options) (include/exclude collections, manage fields, etc.).

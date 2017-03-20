mongo="${MONGO:-mongo}"
mongoport="${MONGOPORT:-27017}"
elasticsearch="${ELASTICSEARCH:-elasticsearch}"
elasticport="${ELASTICPORT:-9200}"

# set mongo replica set
chmod 755 /tmp/mongo
/tmp/mongo ${mongo}:${mongoport} --eval "rs.initiate()"

mongo-connector --auto-commit-interval=0 -m ${mongo}:${mongoport} -t ${elasticsearch}:${elasticport} -d elastic2_doc_manager

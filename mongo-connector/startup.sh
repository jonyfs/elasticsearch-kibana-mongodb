sleep 10

mongo-connector --auto-commit-interval=0 --oplog-ts=/data/oplog.ts -m mongodb1:27017 -t elasticsearch:9200 -d elastic_doc_manager

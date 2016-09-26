/scripts/wait-until-started.sh

echo installing elastic2-doc-manager...
pip install elastic2-doc-manager

echo starting mongo-connector...
mongo-connector -m mongodb3:27017 -t elasticsearch:9200  -d elastic2_doc_manager
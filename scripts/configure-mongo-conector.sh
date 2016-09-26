#!/bin/bash

/scripts/wait-until-started.sh

echo installing elastic2-doc-manager...
pip install elastic2-doc-manager

echo starting mongo-connector...
MONGO=`ping -c 1 mongodb1 | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
ES=`ping -c 1 elasticsearch | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongo-connector --auto-commit-interval=5 -m ${MONGO}:27017 -t ${ES} -v -d elastic_doc_manager --stdout
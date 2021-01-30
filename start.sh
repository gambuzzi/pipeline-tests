#!/bin/bash
app="pipeline.test"
docker build -t ${app} .
docker run --rm -d -p 8080:80 \
  --name=${app} \
  -v $PWD:/app ${app}
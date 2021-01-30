#!/bin/bash
app="pipeline.test"
docker build -t ${app} dev
docker run --rm -p 8080:80 \
  --name=${app} \
  -v $PWD:/app ${app}
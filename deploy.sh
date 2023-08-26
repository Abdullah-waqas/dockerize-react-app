#!/bin/bash
if [[ $1 = "prod" || $1 = "dev" ]] && [[ $2 = "down" || $2 = "up" ]]; then
  fileEnv="docker-compose-${1}.yml"
  downOrUp=$2
  echo "Running docker-compose -f docker-compose.yml -f $fileEnv $downOrUp"
  docker-compose -f docker-compose.yml -f "$fileEnv" "$downOrUp"
else
  echo "Need to follow the format ./deploy.sh prod|dev up|down"
fi

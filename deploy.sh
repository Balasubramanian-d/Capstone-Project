#!/bin/bash

docker login -u balasubramaniand -p dckr_pat_bLlyFbCSTx8iEbJFOrcRNRS8dWw
if [ $GIT_BRANCH == "origin/dev" ]; then
docker tag mynewimage balasubramaniand/dev
docker push balasubramaniand/dev
elif [ $GIT_BRANCH == "origin/main" ]; then
docker tag mynewimage balasubramaniand/prod
docker push balasubramaniand/prod
fi
docker-compose up -d

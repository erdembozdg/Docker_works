#!/bin/bash
docker build -t ebzdag/fib-client:LATEST -t ebzdag/fib-client:"$SHA" -f ./client/Dockerfile ./client
docker build -t ebzdag/fib-server:LATEST -t ebzdag/fib-server:"$SHA" -f ./server/Dockerfile ./server
docker build -t ebzdag/fib-worker:LATEST -t ebzdag/fib-worker:"$SHA" -f ./worker/Dockerfile ./worker

docker push ebzdag/fib-client:LATEST
docker push ebzdag/fib-server:LATEST
docker push ebzdag/fib-worker:LATEST
docker push ebzdag/fib-client:"$SHA"
docker push ebzdag/fib-server:"$SHA"
docker push ebzdag/fib-worker:"$SHA"

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=ebzdag/fib-server:"$SHA"
kubectl set image deployments/client-deployment server=ebzdag/fib-client:"$SHA"
kubectl set image deployments/worker-deployment server=ebzdag/fib-worker:"$SHA"
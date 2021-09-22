#!/bin/sh

kubectl delete configmap nginx-html
kubectl delete configmap nginx-config

kubectl create configmap nginx-html --from-file=dist/
kubectl create configmap nginx-config --from-file=default.conf

kubectl apply -f ./deploy3.yaml

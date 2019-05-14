#!/bin/bash

minikube start;
minikube addons enable default-storageclass;
helm init;
sleep 30;
kubectl create ns jenkins;
helm install --name jenkins stable/jenkins --namespace jenkins;
minikube dashboard


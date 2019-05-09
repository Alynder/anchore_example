#!/bin/bash

minikube start;
minikube addons enable default-storageclass;
helm init;
kubectl create ns jenkins;
helm install --name jenkins stable/jenkins --namespace jenkins;
minikube dashboard


#!/bin/bash
kubectl create ns security;
helm install --name anchore stable/anchore-engine --namespace security;

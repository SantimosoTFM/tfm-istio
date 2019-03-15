#!/bin/bash
echo "> Creating istio-namespace"
kubectl apply -f ../namespace.yaml
kubectl label namespace istio-system istio-injection=disabled --overwrite
kubectl label namespace default istio-injection=enabled --overwrite
echo "> Configuring Helm in the main cluster"
kubectl apply -f helm-service-account.yaml
helm init --service-account tiller
sleep 10
echo "> Creating istio-init helm release with DEFAULT values"
helm install ./istio-init --name istio-init --namespace istio-system 
sleep 20
echo "> Creating ISTIO 1.1.0-rc4 helm release with CUSTOM values"
helm install ./istio --name istio -f ./istio/values-custom.yaml --namespace istio-system


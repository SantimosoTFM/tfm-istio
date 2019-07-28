#!/bin/bash
# set -e

export ISTIO_VERSION=$(cat ./version)

kubectl apply -f init/

helm install istio.io/istio-init  --name istio-init --version $ISTIO_VERSION --namespace istio-system -f helm/istio-init-values.yaml

helm install istio.io/istio  --name istio --version $ISTIO_VERSION --namespace istio-system -f helm/istio-values.yaml

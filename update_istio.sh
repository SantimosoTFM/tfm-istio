#!/bin/bash
# set -e

export ISTIO_VERSION=$(cat ./version)

helm upgrade istio-init istio.io/istio-init --version $ISTIO_VERSION --namespace istio-system -f helm/istio-init-values.yaml 

helm upgrade istio istio.io/istio --version $ISTIO_VERSION --namespace istio-system -f helm/istio-values.yaml 

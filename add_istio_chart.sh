#!/bin/bash
# set -e

export ISTIO_VERSION=$(cat ./version)

helm repo add istio.io https://storage.googleapis.com/istio-release/releases/$ISTIO_VERSION/charts/

helm repo update

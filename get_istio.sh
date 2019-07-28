#!/bin/bash
# Download Istio and export istioctl
export ISTIO_VERSION=$(cat ./version)
curl -L https://git.io/getLatestIstio | ISTIO_VERSION=$ISTIO_VERSION sh -


export PATH=`pwd`/istio-$ISTIO_VERSION/bin:$PATH

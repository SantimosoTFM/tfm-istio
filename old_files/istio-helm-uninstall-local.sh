
vISTIO=istio-1.0.3


kubectl delete -f $vISTIO/install/kubernetes/helm/istio/templates/crds.yaml
kubectl delete -f $vISTIO/install/kubernetes/helm/istio/charts/certmanager/templates/crds.yaml
helm del --purge istio
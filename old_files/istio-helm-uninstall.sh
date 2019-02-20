helm del --purge istio
kubectl delete namespace istio-system
kubectl delete -f https://raw.githubusercontent.com/IBM/charts/master/stable/ibm-istio/templates/crds.yaml
kubectl delete -f https://raw.githubusercontent.com/IBM/charts/master/stable/ibm-istio/charts/certmanager/templates/crds.yaml
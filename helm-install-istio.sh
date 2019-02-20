
kubectl create namespace istio-system

kubectl label namespace default istio-injection=enabled --overwrite

helm repo add istio.io "https://gcsweb.istio.io/gcs/istio-prerelease/daily-build/release-1.1-latest-daily/charts/"

helm install istio.io/istio-init --name istio-init --version 1.1.0 --namespace istio-system

helm install istio.io/istio --name istio --version 1.1.0 -f helm/values.yaml  --namespace istio-system

kubectl apply -f k8s/grafana-kiali-secret.yaml

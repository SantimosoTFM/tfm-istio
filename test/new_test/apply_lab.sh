istioctl kube-inject \
    --injectConfigFile inject-config.yaml \
    --meshConfigFile mesh-config.yaml \
    --filename lab/nginx-lab02-deploy.yaml \
    --output lab/istio/nginx-lab02-deploy-inject.yaml


kubectl apply -f lab/istio/ -n lab

kubectl apply -f lab/k8s/ -n lab
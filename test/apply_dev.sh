istioctl kube-inject \
    --injectConfigFile inject-config.yaml \
    --meshConfigFile mesh-config.yaml \
    --filename dev/nginx-dev01-deploy.yaml \
    --output dev/istio/nginx-dev01-deploy-inject.yaml


istioctl kube-inject \
    --injectConfigFile inject-config.yaml \
    --meshConfigFile mesh-config.yaml \
    --filename dev/nginx-dev02-deploy.yaml \
    --output dev/istio/nginx-dev02-deploy-inject.yaml


kubectl apply -f dev/istio/ -n dev
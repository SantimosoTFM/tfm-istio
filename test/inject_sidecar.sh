kubectl -n istio-system get configmap istio-sidecar-injector -o=jsonpath='{.data.config}' > inject-config.yaml
kubectl -n istio-system get configmap istio -o=jsonpath='{.data.mesh}' > mesh-config.yaml
istioctl kube-inject \
    --injectConfigFile inject-config.yaml \
    --meshConfigFile mesh-config.yaml \
    --filename network-super-tools-deploy.yaml \
    --output k8s/network-super-tools-deploy-injected.yaml 
kubectl apply -f k8s/
#istioctl kube-inject -f network-super-tools-deploy.yaml -o k8s/network-super-tools-deploy-injected.yaml 

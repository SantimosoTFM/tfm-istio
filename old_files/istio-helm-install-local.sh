
vISTIO=istio-1.1.0-snapshot.2

kubectl create namespace istio-system

helm install $vISTIO/install/kubernetes/helm/istio --name istio --namespace istio-system \
--set global.crds=true \
--set global.istioNamespace="istio-system" \
--set global.rbacEnabled=true \
--set global.k8sIngress.enabled=false \
--set gateways.enabled=true \
--set gateways.istio-ingressgateway.enabled=true \
--set gateways.istio-ingressgateway.type=NodePort \
--set gateways.istio-egressgateway.enabled=true \
--set gateways.istio-egressgateway.type=NodePort \
--set telemetrygateway.grafanaEnabled=true \
--set telemetrygateway.prometheusEnabled=true \
--set sidecarInjectorWebhook.enabled=true \
--set mixer.policy.enabled=true \
--set mixer.telemetry.enabled=true \
--set galley.enabled=true \
--set pilot.enabled=true \
--set security.enabled=true \
--set grafana.enabled=true \
--set prometheus.enabled=true \
--set servicegraph.enabled=false \
--set tracing.enabled=true \
--set kiali.enabled=true \
--set certmanager.enabled=true 


# Servicegraph replaced by Kiali as the way to graphically represent the mesh state 
# https://github.com/istio/istio/tree/master/addons/servicegraph
#--set tracing.ingress.enabled=true \
#--set tracing.jaeger.ingress.enabled=true \
#--set tracing.jaeger.ingress.hosts[0]="jaeger.santier.tfm.net" \
#--set kiali.ingress.hosts[0]="kiali.santier.tfm.net" \
#--set tracing.ingress.hosts[0]="tracing.santier.tfm.net" \
#--set kiali.ingress.enabled=true \
#
#

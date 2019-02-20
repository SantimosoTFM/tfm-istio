helm install ibm-charts/ibm-istio --name istio --namespace istio-system \
--set global.crds=true \
--set global.istioNamespace="istio-system" \
--set gateways.enabled=true \
--set gateways.ingressgateway.type=NodePort \
--set gateways.egressgateway.type=NodePort \
--set sidecarinjectorwebhook.enabled=true \
--set galley.enabled=true \
--set mixer.enabled=true \
--set pilot.enabled=true \
--set security.enabled=true \
--set telemetrygateway.grafanaEnabled=true \
--set telemetrygateway.prometheusEnabled=true \
--set grafana.enabled=true \
--set grafana.service.type=ClusterIP \
--set prometheus.enabled=true \
--set prometheus.service.nodePort.enabled=false \
--set servicegraph.enabled=true \
--set servicegraph.ingress.enabled=true \
--set servicegraph.ingress.hosts[0]="servicegraph.santier.tfm.net" \
--set tracing.enabled=true \
--set tracing.ingress.enabled=true \
--set tracing.ingress.hosts[0]="tracing.santier.tfm.net" \
--set tracing.jaeger.ingress.enabled=true \
--set tracing.jaeger.ingress.hosts[0]="jaeger.santier.tfm.net" \
--set kiali.enabled=true \
--set kiali.ingress.enabled=true \
--set kiali.ingress.hosts[0]="kiali.santier.tfm.net" \
--set certmanager.enabled=true 

#kubectl delete svc kiali-jaeger -n istio-system
#--set ingress.enabled=true \
#--set ingress.service.type=NodePort \
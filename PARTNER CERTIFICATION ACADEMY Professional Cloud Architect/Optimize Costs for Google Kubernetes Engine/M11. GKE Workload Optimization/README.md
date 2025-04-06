# M11. GKE Workload Optimization

https://partner.cloudskillsboost.google/course_templates/655/labs/503746

## Provision lab environment

```
gcloud config set compute/zone us-central1-f
```


```
gcloud container clusters create test-cluster --num-nodes=3  --enable-ip-alias
```


```
cat << EOF > gb_frontend_pod.yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: gb-frontend
  name: gb-frontend
spec:
    containers:
    - name: gb-frontend
      image: gcr.io/google-samples/gb-frontend-amd64:v5
      resources:
        requests:
          cpu: 100m
          memory: 256Mi
      ports:
      - containerPort: 80
EOF
```


```
kubectl apply -f gb_frontend_pod.yaml
```

## Task 1. Container-native load balancing through ingress

```
cat << EOF > gb_frontend_cluster_ip.yaml
apiVersion: v1
kind: Service
metadata:
  name: gb-frontend-svc
  annotations:
    cloud.google.com/neg: '{"ingress": true}'
spec:
  type: ClusterIP
  selector:
    app: gb-frontend
  ports:
  - port: 80
    protocol: TCP
    targetPort: 80
EOF
```

```
kubectl apply -f gb_frontend_cluster_ip.yaml
```


```
cat << EOF > gb_frontend_ingress.yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: gb-frontend-ingress
spec:
  defaultBackend:
    service:
      name: gb-frontend-svc
      port:
        number: 80
EOF
```


```
kubectl apply -f gb_frontend_ingress.yaml
```


```
BACKEND_SERVICE=$(gcloud compute backend-services list | grep NAME | cut -d ' ' -f2)
```

```
gcloud compute backend-services get-health $BACKEND_SERVICE --global
```


```
kubectl get ingress gb-frontend-ingress
```

## Task 2. Load testing an application


```
gsutil -m cp -r gs://spls/gsp769/locust-image .
```


```
gcloud builds submit \
    --tag gcr.io/${GOOGLE_CLOUD_PROJECT}/locust-tasks:latest locust-image
```


```
gcloud container images list
```


```
gsutil cp gs://spls/gsp769/locust_deploy_v2.yaml .
sed 's/${GOOGLE_CLOUD_PROJECT}/'$GOOGLE_CLOUD_PROJECT'/g' locust_deploy_v2.yaml | kubectl apply -f -
```


```
kubectl get service locust-main
```


## Task 3. Readiness and liveness probes

```
cat << EOF > liveness-demo.yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    demo: liveness-probe
  name: liveness-demo-pod
spec:
  containers:
  - name: liveness-demo-pod
    image: centos
    args:
    - /bin/sh
    - -c
    - touch /tmp/alive; sleep infinity
    livenessProbe:
      exec:
        command:
        - cat
        - /tmp/alive
      initialDelaySeconds: 5
      periodSeconds: 10
EOF
```

```
kubectl apply -f liveness-demo.yaml
```


```
kubectl describe pod liveness-demo-pod
```


```
kubectl exec liveness-demo-pod -- rm /tmp/alive
```


```
kubectl describe pod liveness-demo-pod
```

### Setting up a readiness probe

```
cat << EOF > readiness-demo.yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    demo: readiness-probe
  name: readiness-demo-pod
spec:
  containers:
  - name: readiness-demo-pod
    image: nginx
    ports:
    - containerPort: 80
    readinessProbe:
      exec:
        command:
        - cat
        - /tmp/healthz
      initialDelaySeconds: 5
      periodSeconds: 5
---
apiVersion: v1
kind: Service
metadata:
  name: readiness-demo-svc
  labels:
    demo: readiness-probe
spec:
  type: LoadBalancer
  ports:
    - port: 80
      targetPort: 80
      protocol: TCP
  selector:
    demo: readiness-probe
EOF
```


```
kubectl apply -f readiness-demo.yaml
```


```
kubectl get service readiness-demo-svc
```


```
kubectl describe pod readiness-demo-pod
```

```
kubectl exec readiness-demo-pod -- touch /tmp/healthz
```


```
kubectl describe pod readiness-demo-pod | grep ^Conditions -A 5
```


## Task 4. Pod disruption budgets

```
kubectl delete pod gb-frontend
```


```
cat << EOF > gb_frontend_deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: gb-frontend
  labels:
    run: gb-frontend
spec:
  replicas: 5
  selector:
    matchLabels:
      run: gb-frontend
  template:
    metadata:
      labels:
        run: gb-frontend
    spec:
      containers:
        - name: gb-frontend
          image: gcr.io/google-samples/gb-frontend-amd64:v5
          resources:
            requests:
              cpu: 100m
              memory: 128Mi
          ports:
            - containerPort: 80
              protocol: TCP
EOF
```

```
kubectl apply -f gb_frontend_deployment.yaml
```


```
for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=default-pool -o=name); do
  kubectl drain --force --ignore-daemonsets --grace-period=10 "$node";
done
```


```
kubectl describe deployment gb-frontend | grep ^Replicas
```


```
for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=default-pool -o=name); do
  kubectl uncordon "$node";
done
```

```
kubectl describe deployment gb-frontend | grep ^Replicas
```


```
kubectl create poddisruptionbudget gb-pdb --selector run=gb-frontend --min-available 4
```


```
for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=default-pool -o=name); do
  kubectl drain --timeout=30s --ignore-daemonsets --grace-period=10 "$node";
done
```


```
kubectl describe deployment gb-frontend | grep ^Replicas
```


# Congratulations!

You learned how you can create a container-native load balancer through ingress in order to take advantage of more efficient load balancing and routing. You ran a simple load test on a GKE application and observed its baseline CPU and memory utilization, as well as how it responds to spikes in traffic. Additionally you configured liveness and readiness probes along with a pod disruption budget to ensure your applications' availability. These tools and techniques in conjunction with each other contribute to an overall efficiency to how your application can run on GKE by minimizing extraneous network traffic, defining meaningful indicators of a well-behaved application and improving application availability.

## Next steps / Learn more

Check out these resources to learn more about the topics covered in this lab:

- [Best practices for running cost-optimized Kubernetes applications on GKE: Prepare Cloud Based Kubernetes Applications](https://cloud.google.com/solutions/best-practices-for-running-cost-effective-kubernetes-applications-on-gke#prepare_cloud-based_kubernetes_applications)
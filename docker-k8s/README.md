# docker_k8s

# Creating a Secret
kubectl create secret generic pgpassword --from-literal pgpassword=password123

# Minikube
minikube addons enable ingress


# Helm
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install my-release ingress-nginx/ingress-nginx
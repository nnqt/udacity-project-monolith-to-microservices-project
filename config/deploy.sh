# Apply environment variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

# Deployments - Make sure the Dockerhub image name and version are correct in the deployment files
kubectl apply -f udagram-api-feed-deployment.yaml
kubectl apply -f udagram-api-user-deployment.yaml
kubectl apply -f udagram-frontend-deployment.yaml
kubectl apply -f udagram-reverseproxy-deployment.yaml

# Services
kubectl apply -f udagram-api-feed-service.yaml
kubectl apply -f udagram-api-user-service.yaml
kubectl apply -f udagram-frontend-service.yaml
kubectl apply -f udagram-reverseproxy-service.yaml

echo "Deployment complete."

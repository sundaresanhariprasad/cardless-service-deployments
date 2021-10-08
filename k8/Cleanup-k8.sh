# Start up scripts to all the relevant services (Development Env only)
echo "Creating components starts" 
#kubectl create namespace dev-namespace
kubectl delete -f ./cards-legacy/
kubectl delete -f ./cards-new-platform/
kubectl delete -f ./bridge-service/
echo "Creating components ends" 
kubectl get services
kubectl get pods

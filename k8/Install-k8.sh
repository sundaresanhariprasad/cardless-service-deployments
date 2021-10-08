# Start up scripts to all the relevant services (Development Env only)
echo "Creating components starts" 
#kubectl create namespace dev-namespace
kubectl create -f ./card-legacy/
kubectl create -f ./cards-new-platform/
kubectl create -f ./bridge-service/
echo "Creating components ends" 
kubectl get services
kubectl get pods

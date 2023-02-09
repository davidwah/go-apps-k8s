# Golang apps with kube scaling

# Getting started
## Build docker image
```
docker build -t davidwah/my-go-apps .
```

## Push docker image
```
docker push davidwah/my-go-apps
```

## Start local kubernetes cluster
```
minikube start
```

## Run deployment
```
kubectl apply -f deployment.yaml
```

## Run service loadBalance
```
kubectl apply -f service.yml
```

## View the application
```
kubeclt get services
```
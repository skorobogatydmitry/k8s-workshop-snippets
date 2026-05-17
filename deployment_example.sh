kubectl create deployment just-nginx --image=nginx:alpine --replicas=2
kubectl expose deployment just-nginx --port=80
kubectl run observer --image=alpine -it -- sh
apk add curl; nslookup just-nginx; curl just-nginx
kubectl logs deploy/just-nginx
kubectl get service/just-nginx -o yaml

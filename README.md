# k8s-awesome-resources


https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/05-kubernetes-configuration-files.md

https://github.com/kelseyhightower/kubernetes-the-hard-way/tree/c32977f3613498dadfb9b2f1405598e5da4ae169

# Ingress
nginx ingress controller doc:
https://github.com/kubernetes/ingress-nginx/blob/master/deploy/README.md

baremetal w/ NodePort

`curl https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/baremetal/service-nodeport.yaml \
    | kubectl apply -f -`


# DNS
https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#a-records-1

pod-ip-address.my-namespace.pod.cluster.local

poddomain.headlesservicename.namespace.svc.cluster.local

# RBAC

https://v1-6.docs.kubernetes.io/docs/admin/authorization/rbac/


# Jobs
https://kubernetes.io/docs/tasks/job/coarse-parallel-processing-work-queue/

# kubernetes master

Certs/Token go to /var/lib/kubernetes/

# Useful commands


kubectl explain

kubectl get componentstatuses

kubectl run -i --tty busybox --image=busybox -- sh  # busybox interactive shell

kubectl get pods -l run=ghost

kubectl get pods -Lrun

kubectl set image deployment/nginx nginx=nginx:1.10 --all

kubectl create secret generic mysql --from-literal=password=root
kubectl create secret generic mysql --from-file=./foo.bar
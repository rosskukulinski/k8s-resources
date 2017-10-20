# k8s-awesome-resources


https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/05-kubernetes-configuration-files.md

https://github.com/kelseyhightower/kubernetes-the-hard-way/tree/c32977f3613498dadfb9b2f1405598e5da4ae169


# kube 1.6 docs

https://v1-6.docs.kubernetes.io/docs/admin/kubeadm/

https://v1-6.docs.kubernetes.io/docs/admin/kubelet/

https://v1-6.docs.kubernetes.io/docs/admin/kube-apiserver/

https://v1-6.docs.kubernetes.io/docs/admin/kube-controller-manager/

https://v1-6.docs.kubernetes.io/docs/admin/kube-proxy/

https://v1-6.docs.kubernetes.io/docs/admin/kube-scheduler/

https://v1-6.docs.kubernetes.io/docs/admin/federation-apiserver/

https://v1-6.docs.kubernetes.io/docs/admin/federation-controller-manager/

# Ingress
nginx ingress controller doc:

https://github.com/kubernetes/ingress-nginx/blob/master/deploy/README.md

baremetal w/ NodePort

`curl https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/baremetal/service-nodeport.yaml \
    | kubectl apply -f -`

# etcd

https://coreos.com/etcd/docs/latest/docs.html#documentation

https://coreos.com/etcd/docs/latest/op-guide/security.html

https://coreos.com/etcd/docs/latest/op-guide/recovery.html

# DNS
https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#a-records-1

pod-ip-address.my-namespace.pod.cluster.local

poddomain.headlesservicename.namespace.svc.cluster.local

# RBAC

https://v1-6.docs.kubernetes.io/docs/admin/authorization/rbac/

http://docs.heptio.com/content/tutorials/rbac.html


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


# tmux

https://robots.thoughtbot.com/a-tmux-crash-course

tmux new -s session_name  

creates a new tmux session named session_name

tmux attach -t session_name

attaches to an existing tmux session named session_name

tmux switch -t session_name

switches to an existing session named session_name

tmux list-sessions

lists existing tmux sessions

tmux detach (prefix + d)

detach the currently attached session



tmux new-window (prefix + c)

create a new window

tmux select-window -t :0-9 (prefix + 0-9)

move to the window based on index

tmux rename-window (prefix + ,)

rename the current window


tmux split-window (prefix + ")

splits the window into two vertical panes

tmux split-window -h (prefix + %)

splits the window into two horizontal panes

tmux swap-pane -[UDLR] (prefix + { or })

swaps pane with another in the specified direction

tmux select-pane -[UDLR]

selects the next pane in the specified direction

tmux select-pane -t :.+

selects the next pane in numerical order

# remap prefix to Control + a

set -g prefix C-a

unbind C-b

bind C-a send-prefix

# force a reload of the config file

unbind r

bind r source-file ~/.tmux.conf

# quick pane cycling

unbind ^A

bind ^A select-pane -t :.+

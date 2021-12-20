# kubectl_linux_versions

lower version kubectl client crashes on MacOSX Monterey,  use docker to handle it


## Build Image

```bash
docker build -t docker_kubectl .
```

## Execute kubectl

```bash
$ docker run --rm -it docker_kubectl kubectl_1.9.11 
```

Use config file in host machine

```bash
$ docker run --rm -it -v <Your K8s Config File>:/k8sconfig  docker_kubectl kubectl_1.9.11 --kubeconfig k8sconfig get namespace
```

Run Pre-build Image

```bash
$ docker run --rm -it -v <Your K8s Config File>:/k8sconfig  mebusy/kubectl_versions  kubectl_1.9.11 --kubeconfig k8sconfig get namespace
```

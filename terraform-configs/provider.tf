provider "kubernetes" {
  host                   = minikube_cluster.minikube_docker.host
  client_certificate     = base64decode(minikube_cluster.minikube_docker.client_certificate)
  client_key             = base64decode(minikube_cluster.minikube_docker.client_key)
  cluster_ca_certificate = base64decode(minikube_cluster.minikube_docker.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {                                                                    
    host                   = minikube_cluster.minikube_docker.host
    client_certificate     = base64decode(minikube_cluster.minikube_docker.client_certificate)
    client_key             = base64decode(minikube_cluster.minikube_docker.client_key)
    cluster_ca_certificate = base64decode(minikube_cluster.minikube_docker.cluster_ca_certificate)
  }
}
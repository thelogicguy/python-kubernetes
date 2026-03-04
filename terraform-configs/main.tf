terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.6.0"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.35.2" 
}

resource "minikube_cluster" "minikube_docker" {
  cluster_name               = "complete-devops-project"
  driver             = "docker"
  addons = [
    "defaultstorageclass", # Enable the default storage class addon to allow dynamic provisioning of Persistent Volumes
    "storage-provisioner"  # Enable the storage-provisioner addon to allow dynamic provisioning of Persistent Volumes
  ]
}
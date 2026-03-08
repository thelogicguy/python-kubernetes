resource "helm_release" "argo_cd" {
    
  depends_on = [minikube_cluster.minikube_docker]  

  name             = "argocd"
  namespace        = "argocd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  create_namespace = true

  values = [
    <<-EOF
    server:
      service:
        type: ClusterIP
    EOF
  ]
}
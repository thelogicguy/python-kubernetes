resource "helm_release" "argo_cd" {
    name = "argocd"
    namespace = "argocd"
    chart = "argo-cd"
    repository = "https://argoproj.github.io/argo-helm"
    create_namespace = true

    depends_on = [
    minikube_cluster.minikube_docker
    ]
    
    values = [
        <<-EOF
        server:
          service:
            type: ClusterIP
        EOF
    ]
}
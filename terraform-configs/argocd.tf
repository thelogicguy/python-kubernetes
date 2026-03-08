resource "helm_release" "argo_cd" {
    name = "argocd"
    namespace = "argocd"
    chart = "argo-cd"
    repository = "https://argoproj.github.io/argo-helm"
    create_namespace = true

    values = [
        <<-EOF
        server:
          service:
            type: ClusterIP
        EOF
    ]
}
data "digitalocean_kubernetes_cluster" "output" {
  name = "facuxfdz-cluster"
}

resource "local_file" "kubeconfig" {
    content = "${data.digitalocean_kubernetes_cluster.output.kube_config[0].raw_config}"
    filename = "kubeconfig.yaml"
}
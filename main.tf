terraform {
  required_providers {
    digitalocean = {
        source = "digitalocean/digitalocean"
        version = "~> 2.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "facuxfdz" {
  name = "facuxfdz-cluster"
  region = "nyc1"
  version = "1.23.9-do.0"

  node_pool {
    name = "facuxfdz-worker-node"
    size = "s-1vcpu-2gb"
    node_count = 1
  }
}
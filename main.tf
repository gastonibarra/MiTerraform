terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "token"
}

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "ubuntu20-test2"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = ["f1:1a:b4:75:75:c8:8d:b3:ed:9c:e6:15:1e:4d:2f:53"]
}

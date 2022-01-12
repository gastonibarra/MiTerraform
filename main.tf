terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "69d5b83f950d93d34dfe5859c0db88f8657e204e416d003818a3f3aa3d062030"
}

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "ubuntu20-test"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = ["f1:1a:b4:75:75:c8:8d:b3:ed:9c:e6:15:1e:4d:2f:53"]
}

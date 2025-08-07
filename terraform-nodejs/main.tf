terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "node_app" {
  name = "sriv01/nodejs-demo-app"
}

resource "docker_container" "node_container" {
  name  = "nodejs-app"
  image = docker_image.node_app.name
  ports {
    internal = 3000
    external = 3000
  }
}


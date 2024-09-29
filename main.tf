terraform {
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
        version = "~>2.23.1"
    }
  }
}

provider "docker" {
     host    = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "practice"
  ports {
    internal = 80
    external = 8080
  }
}
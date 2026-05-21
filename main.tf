# 1. Define the Provider (The plugin that lets Terraform talk to Docker)
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# 2. Define a Docker Image to use
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# 3. Define the Container
resource "docker_container" "nginx_server" {
  image = docker_image.nginx.image_id
  name  = "my_terraform_webserver"
  ports {
    internal = 80
    external = 8080
  }
}

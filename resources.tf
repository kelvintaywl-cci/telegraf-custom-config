
# pulls the image from the host machine's Docker
resource "docker_image" "this" {
  name = var.telegraf_docker_image
}

resource "docker_container" "this" {
  name  = "telegraf"
  image = docker_image.this.image_id

  volumes {
    host_path      = abspath("${path.module}/etc_telegraf")
    container_path = "/etc/telegraf"
    read_only      = true
  }
}

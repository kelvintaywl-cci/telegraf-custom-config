
# pulls the image from the host machine's Docker
resource "docker_image" "this" {
  name = "var.telegraf_docker_image"
}

resource "docker_container" "this" {
  name  = "telegraf"
  image = docker_image.this.image_id

  volumes {
    host_path = file("${path.module}/telegraf.conf")
    container_path = "/etc/telegraf/telegraf.conf"
    read_only = true
  }
}

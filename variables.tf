variable "telegraf_docker_image" {
  description = "Docker image:tag for Telegraf"
  # NOTE: this image is only available for linux/amd64
  # In other words, this image is not usable on Mac M1
  # See https://hub.docker.com/_/telegraf/tags?page=1&name=1.17-alpine
  default = "telegraf:1.17-alpine"
}
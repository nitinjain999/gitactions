resource "docker_image" "ghost_image" {
  name = "ghost:alpine"
}
# Access it somewhere else with ${docker_image.ghost_image.latest}
resource "docker_image" "mysql_image" {
  name = "mysql:5.7"
}
# Access it somewhere else with ${docker_image.mysql_image.latest}
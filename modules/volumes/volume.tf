resource "libvirt_volume" "image-volumes" {
  name = var.name
  pool = var.pool
  source = var.image_source
  format = var.format
}
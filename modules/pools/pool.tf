resource "libvirt_pool" "pool" {
  name = var.pool_name
  type = var.type
  path = var.path
}
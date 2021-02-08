output "volume_id" {
  value = libvirt_volume.image-volumes.id
}

output "volume_name" {
  value = libvirt_volume.image-volumes.name
}
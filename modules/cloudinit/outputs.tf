output "cloud_init_cfg_name" {
  value = libvirt_cloudinit_disk.commominit.name
}

output "cloud_init_disk_id" {
  value = libvirt_cloudinit_disk.commominit.id
}
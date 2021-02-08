output "vm_name" {
  value = libvirt_domain.domain.name
}

output "vm_id" {
  value = libvirt_domain.domain.id
}
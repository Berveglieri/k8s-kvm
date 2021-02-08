resource "libvirt_domain" "domain" {
  name = var.domain_name
  memory = var.vm_memory
  vcpu = var.vm_vcpu
  cloudinit = var.cloud_init

  network_interface {
    network_name = var.network_name
  }

  console {
    type = "pty"
    target_type = "serial"
    target_port = "0"
  }

  disk {
    volume_id = var.disk_id
  }

  graphics {
    type = "spice"
    listen_type = "address"
    autoport = true
  }
}
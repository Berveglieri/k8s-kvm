resource "libvirt_cloudinit_disk" "commominit" {
  name = var.init_name
  pool = var.pool_name
  user_data = data.template_file.user_data.rendered
}

data "template_file" "user_data" {
  template = file("${path.module}/config/cloud_init.cfg")
  vars = {
    hostname = var.hostname
    ip = var.ip
  }
}


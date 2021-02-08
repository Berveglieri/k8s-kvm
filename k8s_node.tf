module "k8s_node" {
  source = "./modules/domains"
  cloud_init = module.cloud_init.cloud_init_disk_id
  disk_id = module.k8s_volume_node_1.volume_id
  domain_name = "k8s-node-1"
  network_name = "default"
  vm_memory = "4096"
  vm_vcpu = 2
}

module "k8s_node_2" {
  source = "./modules/domains"
  cloud_init = module.cloud_init_1.cloud_init_disk_id
  disk_id = module.k8s_volume_node_2.volume_id
  domain_name = "k8s-node-2"
  network_name = "default"
  vm_memory = "4096"
  vm_vcpu = 2
}

module "k8s_node_3" {
  source = "./modules/domains"
  cloud_init = module.cloud_init_2.cloud_init_disk_id
  disk_id = module.k8s_volume_node_3.volume_id
  domain_name = "k8s-node-3"
  network_name = "default"
  vm_memory = "4096"
  vm_vcpu = 2
}

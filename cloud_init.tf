module "cloud_init" {
  source = "./modules/cloudinit"
  init_name = "commoninit.iso"
  pool_name = module.k8s_pool.pool_name
  hostname = "k8s-node-1"
  ip = "192.168.122.10"
}

module "cloud_init_1" {
  source = "./modules/cloudinit"
  init_name = "commoninit1.iso"
  pool_name = module.k8s_pool.pool_name
  hostname = "k8s-node-2"
  ip = "192.168.122.11"
}

module "cloud_init_2" {
  source = "./modules/cloudinit"
  init_name = "commoninit2.iso"
  pool_name = module.k8s_pool.pool_name
  hostname = "k8s-node-3"
  ip = "192.168.122.12"
}




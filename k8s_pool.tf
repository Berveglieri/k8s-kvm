module "k8s_pool" {
  source = "./modules/pools"
  path = "/home/felipe/libvirt_images/k8s-pool/"
  pool_name = "k8s-pool"
}
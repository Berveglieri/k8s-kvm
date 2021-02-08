module "k8s_volume_node_1" {
  source = "./modules/volumes"
  format = "qcow2"
  image_source = "${path.module}/images/CentOS-8-GenericCloud-8.2.2004-20200611.2.x86_64.qcow2"
  name = "centos8_node1-x86_64.qcow2"
  pool = module.k8s_pool.pool_name
}

module "k8s_volume_node_2" {
  source = "./modules/volumes"
  format = "qcow2"
  image_source = "${path.module}/images/CentOS-8-GenericCloud-8.2.2004-20200611.2.x86_64.qcow2"
  name = "centos8_node2-x86_64.qcow2"
  pool = module.k8s_pool.pool_name
}

module "k8s_volume_node_3" {
  source = "./modules/volumes"
  format = "qcow2"
  image_source = "${path.module}/images/CentOS-8-GenericCloud-8.2.2004-20200611.2.x86_64.qcow2"
  name = "centos8_node3-x86_64.qcow2"
  pool = module.k8s_pool.pool_name
}
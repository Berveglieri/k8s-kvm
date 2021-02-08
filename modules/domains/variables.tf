variable "domain_name" {
  type = string
  description = "The name of the domain to be created"
}

variable "vm_memory" {
  type = string
  description = "The amount of memory to be allocated"
}

variable "vm_vcpu" {
  type = number
  description = "The amount of Vcpu to be allocated"
}

variable "cloud_init" {
  type = string
  description = "The cloud-init disk with the boostrap configuration"
}

variable "network_name" {
  type = string
  description = "The name of the network to create the vm"
}

variable "disk_id" {
  type = string
  description = "The id of the volume to be attached to this machine"
}

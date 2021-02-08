variable "init_name" {
  type = string
  description = "Name of the image holding the cloud-init to be generated"
}

variable "pool_name" {
  type = string
  description = "Name of the pool to store this image"
}

variable "hostname" {
  type = string
  description = "Name of the hostname"
}

variable "ip" {
  type = string
  description = "IP address"
}

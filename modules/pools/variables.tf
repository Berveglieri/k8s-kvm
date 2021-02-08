variable "pool_name" {
  type = string
  description = "Name of the pool to be created"
}

variable "type" {
  type = string
  default = "dir"
  description = "Type of object to be created"
}

variable "path" {
  type = string
  description = "Path to create the new pool"
}
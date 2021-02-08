variable "name" {
  type = string
  description = "Name of the volume to be created"
}

variable "pool" {
  type = string
  description = "Name of the pool to store this volume"
}

variable "image_source" {
  type = string
  description = "Where do fetch the image to be used"
}

variable "format" {
  type = string
  description = "The format of the volume to be created"
}

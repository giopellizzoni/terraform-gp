variable "service_name" {
  type = string
}

variable "service_location" {
  type        = string
  description = "Service Region"
}

variable "service_group" {
  type        = string
  description = "Service group name"
}


variable "docker_image" {
  type        = string
  description = "Docker Image name"
}

variable "docker_image_tag" {
  type        = string
  description = "Docker Image Tag"
}

variable "extra_tags" {
  type    = map(any)
  default = {}
}

variable "db_username" {
  type = string
  default = "mainadministrator"
}

variable "environment" {
  type = string
}

variable "key_vault_id" {
  type = string
}


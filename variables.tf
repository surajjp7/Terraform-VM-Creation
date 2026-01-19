variable "location" {
  type    = string
  default = "westeurope"
}

variable "name" {
  type    = string
  default = "rggroup4-jp"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vnet_name" {
  type    = string
  default = "rg_vnet4"
}

variable "address_prefixes" {
  type    = list(string)
  default = ["10.0.2.0/24"]
}

variable "subnet" {
  type    = string
  default = "rg_subnet3"
}

variable "ssh_public_key" {
  description = "Path to the SSH public key"
  type = string
  default     = "~/.ssh/id_rsa.pub"
}

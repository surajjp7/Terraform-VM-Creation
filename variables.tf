variable "location" {
  type    = string
  default = "westus2"
}

variable "name" {
  type    = string
  default = "rggroup3-jp"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vnet_name" {
  type    = string
  default = "rg_vnet3"
}

variable "address_prefixes" {
  type    = list(string)
  default = ["10.0.2.0/24"]
}

variable "subnet" {
  type    = string
  default = "rg_subnet2"
}

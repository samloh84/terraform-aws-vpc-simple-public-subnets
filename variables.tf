variable "name" {
  type = string
}

variable "project" {
  type = string

}
variable "owner" {
  type = string

}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}


variable "enable_dns_hostnames" {
  default = true
}
variable "enable_dns_support" {
  default = true
}

variable "assign_generated_ipv6_cidr_block" {
  default = false
}


variable "availability_zones" {
  default = ["ap-southeast-1a"]
}

variable "public_subnet_cidr_blocks" {
  type    = list(string)
  default = null
}

variable "management_cidr_ranges" {
  type    = list(string)
  default = null
}
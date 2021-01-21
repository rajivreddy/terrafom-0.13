  
variable "region" {
  type        = string
  description = ""
  default     = "us-west-2"
}

############ VPC Details #############
variable "create_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = "example"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "192.168.0.0/16"
}

variable "environment" {
  type        = string
  description = "Environment in tags to identidy"
  default     = "Dev"
}

variable "additional_tags" {
  type        = map(string)
  description = "Tags that you want to add to all resources"
  default     = {}
}
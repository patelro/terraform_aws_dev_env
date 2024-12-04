variable "my_ip" {
  description = "Your IP address for SSH access"
  type        = string
  sensitive   = true
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  sensitive   = true
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  sensitive   = true
}

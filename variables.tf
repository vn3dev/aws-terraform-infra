variable "my_public_ip" {
  description = "Public IP for acessing SSH"
  type        = string
}

variable "aws_region" {
  description = "Region variable"
  type        = string
  default     = "us-east-1"
}
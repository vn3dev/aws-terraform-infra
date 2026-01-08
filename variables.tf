variable "my_public_ip" {
  description = "Public IP for acessing SSH"
  type        = string
}

variable "aws_region" {
  description = "Region variable"
  type        = string
  default     = "us-east-1"
}

variable "public_key_path" {
  description = "Public SSH key pathing"
  type        = string
  default     = "~/.ssh/aws-key.pub"
}
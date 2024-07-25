variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  default     = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the EC2 instance."
  default     = "key-name"
}

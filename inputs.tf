variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "associate_public_ip_address" {}
variable "vpc_security_group_ids" {}
variable "subnet_id" {}
variable "tags" {}
variable "user_data" {
  description = "values for user_data script, should be passed on as file content from the root module, e.g. file(\"${path.module}/user_data.sh\"), if no user-data script is needed, that passed file with content as -- touch /var/log/user_data_completed"
  default     = "touch /var/log/user_data_completed"
}
variable "root_block_device_size" {
    default = 8
}
variable "root_block_device_type" {
    default = "gp2"
}
variable "ebs_block_device_size" {
    default = 2
}
variable "ebs_block_device_type" {
    default = "gp2"
}
variable "aws_ebs_volume_needed" {
    default = false
}
variable "private_key" {
    default = null
}
variable "ssh_user" {
    default = "ubuntu"
}
variable "private_key_file" {
    default = "./private_key.pem"
}

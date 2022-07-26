# default tag
variable "env" {
    default = "dev"
}
variable "prj" {
    default = "test-project"
}
variable "svc" {
    default = "test-service"
}
variable "region" {
    type = string
    default = "ap-northeast-2"
}


# network
variable "pvc_cidr" {
    type = string
    default = "10.1.0.0/24"
}
variable "subnet_cidr" {
    type = string
    default = "10.1.0.0/26"
}


# ec2
variable "instance_type" {
    default = "t2.micro"
}
variable "instance_ami" {
    default = "ami-0cvec04a61be382d9"
}
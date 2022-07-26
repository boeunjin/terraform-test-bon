resource "aws_vpc" "vpc" {
    cidr_block = var.pvc_cidr
}

resource "aws_subnet" "subnet" {
    availability_zone = "ap-northeast-2a"
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.vpc.id
    map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet" {
    availability_zone = "ap-northeast-2c"
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.vpc.id
    map_public_ip_on_launch = true
}

# resource "aws_instance" "ec2" {
#     ami = var.instance_ami
#     instance_type = var.instance_type
#     subnet_id = aws_subnet.subnet.id
#     associate_public_ip_address = true
# }
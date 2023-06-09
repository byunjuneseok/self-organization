aws_profile     = "neilbyun"
aws_region      = "ap-northeast-2"
project_name    = "binaryflavor.so"
environment     = "neilbyun"

bastion_instance_ami            = "ami-0eb14fe5735c13eb5"
bastion_instance_type           = "t3.micro"
bastion_connection_etcd_user    = "ubuntu"
bastion_connection_bastion_user = "ec2-user"
etcd_instance_ami               = "ami-0454bb2fefc7de534"
etcd_instance_type              = "t3.small"
etcd_instance_count             = 3

vpc_cidr_block      = "10.0.0.0/16"
vpc_azs             = ["ap-northeast-2a", "ap-northeast-2b"]
vpc_public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

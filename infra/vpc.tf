module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "3.11.0"

    name = var.project_name
    cidr = var.vpc_cidr_block

    azs             = var.vpc_azs
    private_subnets = var.vpc_private_subnets
    public_subnets  = var.vpc_public_subnets

    enable_nat_gateway = true
    enable_vpn_gateway = true

    tags = {
        Name = var.project_name
        Terraform = "true"
        Environment = var.environment
    }

    private_subnet_tags = {
        Private = true
    }
    public_subnet_tags = {
        Private = false
    }
}

# https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/master/outputs.tf

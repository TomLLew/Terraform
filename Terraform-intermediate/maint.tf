provider "aws" {
    version = "~> 2.0"
    region = "eu-west-2"
    shared_credentials_file = "~/.aws/credentials"
}

module "aws_vpc" {
    source = "./VPC"
}

module "aws_webserver_sg" {
    source = "./SecurityGroups"
    name = "WebServerSG"
    vpc_id = module.aws_vpc.vpc_id
}

module "weserver_node" {
    source = "./EC2"
    subnet_id = module.aws_vpc.public_subnetA_id
    vpc_security_group_ids = module.aws_webserver_sg.ID_of_securityGroup
    tags = {
        Name = "WebServer_Node"
    }
    associate_public_ip_address = true
}

module "aws_asg" {
  source = "./ASG"
  vpc_id = module.aws_vpc.vpc_id
  security_id = module.aws_webserver_sg.ID_of_securityGroup
  subnet = module.aws_vpc.public_subnetA_id
  
}

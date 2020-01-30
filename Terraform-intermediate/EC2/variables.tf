variable "EC2_AMI" {
    description = "EC2 AMI"
    default = "ami-061e5f1790cb27257"  
}

variable "instance-type" {
    description = "EC2 instance type"
    default = "t2.micro"  
}

variable "pem-key" {
    description = "Key-pair"
    default = "MSP-1"  
}

variable "subnet_id" {
    description = "Subnet ID"  
}

variable "vpc_security_group_ids" {
    description = "SecurityGroup ID"  
}

variable "tags" {
    description = "Name of instance"
    default = "INT-EC2"  
}

variable "associate_public_ip_address" {
    description = "public ip address"
}






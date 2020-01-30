variable "ingress_ports" {
    type = list(number)
    description = "list of ingress ports"
    default = [22, 80, 443]
}

variable "outbound_ports" {
    description = "list of egress ports"
    default = 0  
}


variable "open-internet" {
    description = "the open internet"
    default = ["0.0.0.0/0"]
}

variable "vpc_id" {
    description = "VPC ID"  
}

variable "name" {
    description = "Name of security group"
}
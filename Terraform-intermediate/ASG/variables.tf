variable "vpc_id" {
    description = "Vpc ID"
  
}

variable "ami-id" {
    description = "EC2 AMI"
    default = "ami-061e5f1790cb27257"  
}

variable "instance_type" {
    description = "EC2 instance type"
    default = "t2.micro"  
}

variable "security_id"{
    description = "security_id" 
}

variable "subnet" {
    
  
}

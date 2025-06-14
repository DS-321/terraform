variable "ami_id" {

  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of devops pracice RHEL9"
}

variable "instance_type" {

  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {

    Name   = "Roboshop"
    pupose = "variables-demo"
  }
}

variable "sg_name" {

  default = "allow-all"
}

variable "sg_description" {
  default = "allowing all ports from internet"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_all"
  }
}

variable "environment" {
  default = "dev"

}

variable "instances" {
  default = {
    mongodb  = "t3.micro"
    redis    = "t3.micro"
    mysql    = "t3.small"
    rabbitmq = "t3.micro"

    #default = ["mongodb" , "redis" , "mysql" , "rabbitmq"]

  }
}

variable "zone_id" {
  default = "Z104650557V08CNWBHYW"
}

variable "domain_name" {
  default = "dcloudlab.site"
}

variable "ingress_ports" {
  default = [
    {

      from_port = 22
      to_port   = 22
    },

    {

      from_port = 80
      to_port   = 80
    },

    {

      from_port = 8080
      to_port   = 8080
    }
  ]
}


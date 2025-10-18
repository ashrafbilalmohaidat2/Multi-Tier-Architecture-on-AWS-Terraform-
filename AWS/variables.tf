//Web Tier Variables
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-central-1"
}

variable "availability-zones" {
  description = "List of availability zones to use"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "vpc-cidr-block" {
  description = "CIDR Block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc-name" {
  description = "Name tag for the VPC"
  type = string
  default = "three-tier-vpc"
}

variable "igw-name" {
  description = "Name tag for the internet gateway"
  type = string
  default = "three-tier-igw"
}

variable "nat-gw" {
  description = "Name for NAT Gateway"
  type = string
  default = "three-tier-nat"
}

variable "web-subnet-cidr-blocks" {
  description = "List of CIDR blocks for web subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public-route-table-name" {
  description = "Name tag for the public route table"
  type        = string
  default     = "three-tier-public-rt"
}

variable "alb-web-name"{
  description = "Name tag for the Application Load Balancer"
  type        = string
  default     = "web-alb"
}

variable "alb-sg-web"{
  description = "Name tag for the security group for the ALB"
  type        = string
  default     = "alb-web-sg"
}

variable "asg-security-group-web" {
  description = "Name tag for the security group"
  type        = string
  default     = "web-sg"
}

variable "auto-scaling-group-web" {
  description = "Name tag for the Auto Scaling Group"
  type        = string
  default     = "web-asg"
}

variable "tg-web" {
  description = "Name tag for the target group for web servers"
  type        = string
  default     = "web-tg"
}

variable "launch-template-web" {
  description = "Name tag for the launch template for web servers"
  type        = string
  default     = "three-tier-web-lt"
}

variable "image-id" {
  description = "AMI ID for web servers"
  type        = string
  default     = "ami-0a5b0d219e493191b"
}

variable "instance-type" {
  description = "Instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "web-instance-name" {
  description = "Name tag for web server instances"
  type        = string
  default     = "web-instance"
}

variable "key-name" {
  description = "Key pair name for SSH access to web servers"
  type        = string
  default     = "YourKeyPairName"
}

// Application Tier Variables
variable "app-subnet-cidr-blocks" {
  description = "List of CIDR blocks for application subnets"
  type = list(string)
  default = [ "10.0.3.0/24", "10.0.4.0/24" ]
}

variable "private-route-table-name" {
  description = "Name tag for the private route table"
  type = string
  default = "three-tier-private-rt"
}

variable "launch-template-app" {
  description = "Name tag for the launch template for app servers"
  type = string
  default = "three-tier-app-lt"
}

variable "app-instance-name" {
  description = "Name tag for app server instances"
  type = string
  default = "app-instance"
}

variable "alb-app-name" {
  description = "Name tag for the Application Load Balancer for app servers"
  type = string
  default = "app-alb"
}

variable "alb-sg-app" {
  description = "Name tag for the security group for the ALB for app servers"
  type = string
  default = "alb-app-sg"
}

variable "asg-security-group-app" {
  description = "Name tag for the security group for app servers"
  type = string
  default = "app-sg"
}

variable "auto-scaling-group-app" {
  description = "Name tag for the Auto Scaling Group for app servers"
  type = string
  default = "app-asg"
}

variable "tg-app" {
  description = "Name tag for the target group for app servers"
  type = string
  default = "app-tg"
}
// Database Tier Variables
variable "db-subnet-cidr-blocks" {
  description = "List of CIDR blocks for database subnets"
  type = list(string)
  default = [ "10.0.5.0/24", "10.0.6.0/24" ]
}

variable "db-username" {
  description = "Username for DB Instance"
  type = string
  default = "admin"
}

variable "db-password" {
  description = "Password for DB Instance"
  type = string
  default = "YourDBPassword123!"
}

variable "db-name" {
  description = "Name tag for DB Instance"
  type = string
  default = "NameDB"
}

variable "db-class" {
  description = "Instance class for DB Instance"
  type = string
  default = "db.t3.micro"
}

variable "db-sg" {
  description = "Name for DB Security Group"
  type = string
  default = "db-sg"
}

variable "db-subnet-group" {
  description = "Name for DB Subnet Group"
  type = string
  default = "three-tier-db-subnet-group"
}

variable "app-db-sg" {
  description = "Name for App-db Security Group"
  type = string
  default = "app-db-sg"
}
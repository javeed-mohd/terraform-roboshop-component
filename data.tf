# Data sources are used to query and fetch existing information from your provider like AWS, so you can use that data in your Terraform configuration.
# AMI-ID data source
data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Private Subnet Id data source
data "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project}/${var.environment}/private_subnet_ids"     # /roboshop/dev/private_subnet_ids
}

# Component Security Group Id data source
data "aws_ssm_parameter" "sg_id" {
    name = "/${var.project}/${var.environment}/${var.component}_sg_id"     # /roboshop/dev/component_sg_id
}

# VPC Id data source
data "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id"     # /roboshop/dev/vpc_id
}

# Backend ALB Listener Arn (80[HTTP]) data source
data "aws_ssm_parameter" "backend_alb_listener_arn" {
    name = "/${var.project}/${var.environment}/backend_alb_listener_arn"     # /roboshop/dev/backend_alb_listener_arn
}

# Frontend ALB Listener Arn (443[HTTPS]) data source
data "aws_ssm_parameter" "frontend_alb_listener_arn" {
    name = "/${var.project}/${var.environment}/frontend_alb_listener_arn"     # /roboshop/dev/frontend_alb_listener_arn
}
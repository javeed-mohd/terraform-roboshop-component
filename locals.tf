locals {
    # Private Subnet in us-east-1a Availability Zone
    ami_id                      = data.aws_ami.joindevops.id
    vpc_id                      = data.aws_ssm_parameter.vpc_id.value
    private_subnet_id           = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0] # us-east-1a Availability Zone
    sg_id                       = data.aws_ssm_parameter.sg_id.value
    backend_alb_listener_arn    = data.aws_ssm_parameter.backend_alb_listener_arn.value
    frontend_alb_listener_arn   = data.aws_ssm_parameter.frontend_alb_listener_arn.value
    common_tags {
        Name        = var.project
        Environment = var.environment
        Terraform   = "true"
    }
}
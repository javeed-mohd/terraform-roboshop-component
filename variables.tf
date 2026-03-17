# project/project_name can be used as you wish(Not necessarily it should be same but it gives the exact default value provided).
variable "project" {
  default   = "roboshop"
}

variable "environment" {
  default   = "dev"
}

variable "component" {
  type      = string
}

variable "app_version" {
  type      = string
  default   = "v3"
}

variable "health_check_path" {
  default   = "/health"
}

# We override this for frontend component
variable "port_number" {
  default   = 8080
}

variable "rule_priority" {
  default   = 10
}

variable "domain_name" {
  default   = "devopsdaws.online"
}
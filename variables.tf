# tflint-ignore-file: terraform_typed_variables

variable "service_name" {}

variable "cluster_name" {}

variable "region" {}

variable "vpc_id" {}

variable "private_subnets" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "service_listener" {}

variable "service_task_execution_role" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "service_hosts" {}

variable "environment_variables" {
  type = list(any)
}

variable "capabilities" {
  type = list(any)
}

variable "service_healthcheck" {
  type = map(any)
}

### Autoscaling
variable "scale_type" {
	default = null
}
variable "task_minimum" {
	default = 3 
}
variable "task_maximum" {
	default = 10
}

### Autoscaling CPU
variable "scale_out_cpu_threshold" {
	default = 80
}
variable "scale_out_adjustment" {
	default = 1
}
variable "scale_out_comparison_operator" {
	default = "GreaterThanOrEqualToThreshold"
}
variable "scale_out_statistic" {
	default = "Average"
}
variable "scale_out_period" {
	default = 60
}
variable "scale_out_evaluation_periods" {
	default = 2
}
variable "scale_out_cooldown" {
	default = 60
}

variable "scale_in_cpu_threshold" {
	default = 30
}
variable "scale_in_adjustment" {
	default = -1
}
variable "scale_in_comparison_operator" {
	default = "LessThanOrEqualToThreshold"
}
variable "scale_in_statistic" {
	default = "Average"
}
variable "scale_in_period" {
	default = 120
}
variable "scale_in_evaluation_periods" {
	default = 3
}
variable "scale_in_cooldown" {
default = 120
}

### Tracking CPU
variable "scale_tracking_cpu" {
	default = 50
}

### Tracking Requests 
variable "alb_arn" {
	default = null
}

variable "scale_tracking_requests" {
  default = 0
}


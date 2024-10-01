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
variable "scale_type" {}
variable "task_minimum" {}
variable "task_maximum" {}

### Autoscaling CPU
variable "scale_out_cpu_threshold" {}
variable "scale_out_adjustment" {}
variable "scale_out_comparison_operator" {}
variable "scale_out_statistic" {}
variable "scale_out_period" {}
variable "scale_out_evaluation_periods" {}
variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}
variable "scale_in_adjustment" {}
variable "scale_in_comparison_operator" {}
variable "scale_in_statistic" {}
variable "scale_in_period" {}
variable "scale_in_evaluation_periods" {}
variable "scale_in_cooldown" {}

### Tracking CPU
variable "scale_tracking_cpu" {}


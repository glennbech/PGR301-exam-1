variable "threshold" {
  default = "10"
  type = string
}

variable "statistic" {
  default = "Maximum"
  type = string
}

variable "comparison_operator" {
  default = "GreaterThanThreshold"
  type = string
}

variable "alarm_email" {
  type = string
}

variable "prefix" {
  type = string
}

variable "metric_name" {
  type = string
}
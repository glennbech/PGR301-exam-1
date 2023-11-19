variable "alarm_email" {
  type = string
}

variable "prefix" {
  type = string
}

variable "metric_name" {
  type = string
}

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

variable "evaluation_periods" {
  default = "2"
  type = string
}

variable "period" {
  default = "60"
  type = string
}
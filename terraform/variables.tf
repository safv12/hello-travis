variable "environment" {
  description = "Environment in which the lambda will be deployed"
}

variable "lambda_handler" {
  description = "Name of the command to call to execute the lambda function"
}

variable "lambda_zip" {
  description = "Path to the zip file containing the binaries of the lambda"
}

variable "lambda_timeout" {
  description = "Number of seconds after which the lambda time outs"
}

variable "lambda_memory" {
  description = "Memory assigned to the execution of each instance of the lambda health check"
}

variable "region" {
  description = "AWS region to deploy infrastructure"
}

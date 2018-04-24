variable "environment" {
  description = "Environment in which the lambda will be deployed"
}

variable "lambda-handler" {
  description = "Name of the command to call to execute the lambda function"
}

variable "lambda-zip" {
  description = "Path to the zip file containing the binaries of the lambda"
}

variable "lambda-timeout" {
  description = "Number of seconds after which the lambda time outs"
}

variable "lambda-memory" {
  description = "Memory assigned to the execution of each instance of the lambda health check"
}

variable "region" {
  description = "AWS region to deploy infrastructure"
}

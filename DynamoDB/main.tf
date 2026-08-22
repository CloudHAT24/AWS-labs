<<<<<<< HEAD
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.88"
    }
  }
}

provider "awscc" {
  region = "ap-south-1"
}

variable "connect_instance_arn" {
  description = "Amazon Connect Instance ARN"
  type        = string
}

resource "awscc_connect_data_table" "customer_data" {
  instance_arn = var.connect_instance_arn

  name             = "CustomerData"
  description      = "Customer data table for Amazon Connect"
  status           = "PUBLISHED"
  time_zone        = "Asia/Kolkata"
  value_lock_level = "NONE"

  tags = [
    {
      key   = "Environment"
      value = "dev"
    },
    {
      key   = "Project"
      value = "amazon-connect"
    }
  ]
}

output "data_table_arn" {
  value = awscc_connect_data_table.customer_data.arn
}

output "data_table_id" {
  value = awscc_connect_data_table.customer_data.id
=======
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.88"
    }
  }
}

provider "awscc" {
  region = "ap-south-1"
}

variable "connect_instance_arn" {
  description = "Amazon Connect Instance ARN"
  type        = string
}

resource "awscc_connect_data_table" "customer_data" {
  instance_arn = var.connect_instance_arn

  name             = "CustomerData"
  description      = "Customer data table for Amazon Connect"
  status           = "PUBLISHED"
  time_zone        = "Asia/Kolkata"
  value_lock_level = "NONE"

  tags = [
    {
      key   = "Environment"
      value = "dev"
    },
    {
      key   = "Project"
      value = "amazon-connect"
    }
  ]
}

output "data_table_arn" {
  value = awscc_connect_data_table.customer_data.arn
}

output "data_table_id" {
  value = awscc_connect_data_table.customer_data.id
>>>>>>> de8ba87d9ed267aa4af92579920eac3bb90722a3
}
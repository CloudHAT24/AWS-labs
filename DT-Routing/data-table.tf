# amazon-connect-data-table.tf

resource "awscc_connect_data_table" "example" {
  instance_arn = aws_connect_instance.example.arn
  name         = "CustomerRoutingTable"
  description  = "Customer routing configuration"

  tags = [
    {
      key   = "Environment"
      value = "Dev"
    }
  ]
}
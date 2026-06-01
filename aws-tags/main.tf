resource "aws_resourcegroups_group" "demo" {
  name = "spacelift-tags-demo"

  resource_query {
    query = jsonencode({
      ResourceTypeFilters = ["AWS::AllSupported"]
      TagFilters = [{
        Key    = "ManagedBy"
        Values = ["spacelift"]
      }]
    })
  }

  tags = {
    ManagedBy   = "spacelift"
    Environment = "demo"
    Purpose     = "tags-demo"
  }
}

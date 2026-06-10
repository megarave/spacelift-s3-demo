resource "random_string" "random" {
  length  = 10
  special = false
  upper   = false
}

resource "random_integer" "random" {
  min = 1
  max = 10000
}

resource "aws_s3_bucket" "this" {
  bucket = "random-bucket-${random_string.random.result}-${random_integer.random.result}"

  tags = {
    ManagedBy   = "spacelift"
    Environment = "demo"
  }
}

resource "random_string" "random2" {
  length  = 10
  special = false
  upper   = false
}

resource "random_integer" "random2" {
  min = 1
  max = 10000
}

resource "aws_s3_bucket" "second" {
  bucket = "random-bucket-${random_string.random2.result}-${random_integer.random2.result}"

  tags = {
    ManagedBy   = "spacelift"
    Environment = "demo"
  }
}# trigger

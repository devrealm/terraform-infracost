provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}

resource "aws_instance" "ec2_instance_example" {
  ami           = "ami-0abe92d15a280b758"
  instance_type = "m5.4xlarge"

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "s3_example_bucket" {
  bucket = "example-bucket"
}

resource "aws_db_instance" "rds_example" {
  engine                  = "postgres"
  instance_class          = "db.m5.8xlarge"
  db_name                 = "example-db"
  allocated_storage       = 20
  storage_type            = "gp2"
 
  tags = {
    Name = "example-rds-instance"
  }
}


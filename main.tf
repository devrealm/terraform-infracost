provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0abe92d15a280b758"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
}

resource "aws_db_instance" "example" {
  engine                  = "postgres"
  instance_class          = "db.t2.micro"
  name                    = "example-db"
  allocated_storage       = 20
  storage_type            = "gp2"
 
  tags = {
    Name = "example-rds-instance"
  }
}


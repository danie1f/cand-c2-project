# TODO: Designate a cloud provider, region, and credentials

terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "%USERPROFILE%\\.aws\\credentials"

}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "Udacity_T2" {
    ami = "ami-01cc34ab2709337aa"
    instance_type = "t2.micro"
    count = 4
    tags = {
        Name = "Udacity T2"
    }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
    ami = "ami-01cc34ab2709337aa"
    instance_type = "m4.large"
    # count = 4
    count = 0
    tags = {
        Name = "Udacity M4"
    }
}


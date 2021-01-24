# TODO: Designate a cloud provider, region, and credentials

provider "aws" {
  access_key = "AKIA4U47JUFEHLW57QJW"
  secret_key = "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"
  region = "us-east-1"
  profile = "default"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "Udacity-T2" {
  ami           = "ami-0be2609ba883822ec" # Amazon Linux 2 AMI (HVM), SSD in us east 1
  instance_type = "t2.micro"
  count         = 4
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4


resource "aws_instance" "Udacity-M4" {
  ami           = "ami-0be2609ba883822ec" # Amazon Linux 2 AMI (HVM), SSD in us east 1
  instance_type = "m4.large"
  count         = 2
}
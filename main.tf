provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "devops_demo" {
    ami           = "ami-05cf1e9f73fbad2e2"  # Ubuntu
    instance_type = "t3.micro"

    key_name = "devops-demo-key"

    security_groups = ["launch-wizard-2"]

    tags = {
        Name = "terraform-demo"
    }
}
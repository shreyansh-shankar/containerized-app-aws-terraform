provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "devops_demo" {
    ami           = "ami-05cf1e9f73fbad2e2"  # Ubuntu
    instance_type = "t3.micro"

    key_name = "devops-demo-key"

    security_groups = ["launch-wizard-2"]

    user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install docker.io -y
              sudo systemctl start docker
              sudo systemctl enable docker

              sudo docker run -d -p 3000:3000 -e ENV=production -e VERSION=1.0 oxfsociety/devops-demo
              EOF

    tags = {
        Name = "terraform-demo"
    }
}
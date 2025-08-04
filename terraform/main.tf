resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_instance" "zomoto" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = "NV-kp.pem"

  provisioner "local-exec" {
  command = "chmod 400 jenkins_with_terraform.sh && bash ./jenkins_with_terraform.sh"
}

    tags = {
      Name = "zomoto"
    }
}







resource "aws_instance" "project_ec2" {
  ami = data.aws_ami.ubuntu-ami.id 
  instance_type = var.ec2_instance_type
  key_name = var.keypair_name
  subnet_id = aws_subnet.project_subnet.id
  user_data = file("app.sh")

  tags = {
    Name = var.instance_tags["env"]
  }  
}



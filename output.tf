output "ec2_public_ip" {
  value = aws_instance.project_ec2.public_ip
}


output "my-ubuntu-ami" {
    value = data.aws_ami.ubuntu-ami.id  
}
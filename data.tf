data "aws_ami" "ubuntu-ami" {
    most_recent =true
    owners = [ "amazon" ]

    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-*"]
    }

    filter {
      name = "root-device-type"
      values = ["ebs"]
    }

    filter {
      name = "architecture"
      values = ["x86_64"]
    }  
}


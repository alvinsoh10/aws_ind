data "aws_ami" "ami_name" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "architecture"
    values = ["arm64"]
  }
}
resource "aws_instance" "name" {
  ami = data.aws_ami.ami_name.id
  instance_type = "t4g.micro"
  subnet_id = "subnet-0a1e0c2d5fc7efcb6"
  key_name = "alvin-keypair"
  vpc_security_group_ids = ["sg-0487554c2b69bf6b7"]
}
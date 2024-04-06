data "aws_ami" "ami_name" {
  most_recent = true
  owners = "amazo"
  filter {
    name = "architecture"
    values = "arm64"
  }
}
resource "aws_instance" "name" {
  ami = data.aws_ami.ami_name.id
  instance_type = "t4g.micro"
  subnet_id = "subnet-0a1e0c2d5fc7efcb6"
}
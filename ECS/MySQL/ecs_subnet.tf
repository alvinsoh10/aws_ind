resource "aws_subnet" "subnet1" {
    vpc_id = "vpc-007f4d7696454ac10"
    cidr_block = "10.0.0.32/28"
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "test-ecs"
    }
}

resource "aws_subnet" "subnet2" {
    vpc_id = "vpc-007f4d7696454ac10"
    cidr_block = "10.0.0.48/28"
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "test-ecs"
    }
}

resource "aws_subnet" "subnet3" {
    vpc_id = "vpc-007f4d7696454ac10"
    cidr_block = "10.0.0.64/28"
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "test-ecs"
    }
}
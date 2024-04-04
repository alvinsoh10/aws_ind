resource "aws_opensearch_domain" "test-vpc-os" {
  domain_name = "os-tf-vpc"
  engine_version = "Opensearch_2.11"
  cluster_config {
    instance_type = 2
  }
  vpc_options {
    subnet_ids = [
        "subnet-0a1e0c2d5fc7efcb6",
        "subnet-09ef926f597fcef5f"
    ]
    security_group_ids = ["sg-0487554c2b69bf6b7"]
  }
  tags = {
    Name = "test-os-vpc"
  }
}
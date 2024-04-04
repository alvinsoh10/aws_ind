resource "aws_opensearch_domain" "test-vpc-os" {
  domain_name = "os-tf-vpc"
  engine_version = "OpenSearch_2.11"
  cluster_config {
    instance_type = "t3.small.search"
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
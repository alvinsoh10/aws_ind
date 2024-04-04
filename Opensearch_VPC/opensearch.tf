resource "aws_opensearch_domain" "test-vpc-os" {
  domain_name = "os-tf-vpc"
  engine_version = "OpenSearch_2.11"
  cluster_config {
    instance_type = "t3.small.search"
    zone_awareness_config {
      availability_zone_count = 2
    }
    zone_awareness_enabled = true
  }
  vpc_options {
    subnet_ids = [
        "subnet-0a1e0c2d5fc7efcb6",
        "subnet-09ef926f597fcef5f"
    ]
    security_group_ids = ["sg-0487554c2b69bf6b7"]
  }
  
  ebs_options {
    volume_size = 10
    volume_type = "gp3"
    ebs_enabled = true
  }
  tags = {
    Name = "test-os-vpc"
  }
}
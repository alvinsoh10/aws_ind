resource "aws_opensearch_domain" "opensearch_tf" {
  domain_name = "opensearch-tf"
  engine_version = "OpenSearch_2.11"

  cluster_config {
    instance_type = "t3.small.search"
  }
  ebs_options {
    ebs_enabled = true
    volume_size = 10
    volume_type = "gp3"
  }

  tags = {
    Name = "Opensearch Test TF"
  }
}
resource "aws_opensearch_domain" "opensearch_tf" {
  domain_name = "opensearch-tf"
  engine_version = "OpenSearch_2.11"

  cluster_config {
    instance_type = "t3.small.search"
  }

  tags = {
    Name = "Opensearch Test TF"
  }
}
resource "aws_opensearch_domain" "opensearch_tf" {
  domain_name = "opensearch_tf"
  engine_version = "Elasticsearch_7.0"

  cluster_config {
    instance_type = t3.small.search
  }

  tags = {
    Name = "Opensearch Test TF"
  }
}
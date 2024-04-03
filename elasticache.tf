resource "aws_elasticache_replication_group" "elasticache-tf" {
  replication_group_id = "tf-redis-test"
  description = "testing cache"
  node_type = "cache.t3.small"
  port = 6379
  parameter_group_name = "default.redis7.cluster.on"
  automatic_failover_enabled = true
  num_node_groups = 2
  replicas_per_node_group = 1
}
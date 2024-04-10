resource "aws_cloudwatch_log_group" "example" {
  name = "example"
}
resource "aws_ecs_cluster" "cluster_mysql" {
  name = "cluster_mysql"
  configuration {
    execute_command_configuration {
      log_configuration {
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name = aws_cloudwatch_log_group.example.name
      }
    }
  }
}
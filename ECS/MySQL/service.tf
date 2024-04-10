resource "aws_ecs_service" "service_mysql" {
  name = "service_mysql"
  cluster = aws_ecs_cluster.cluster_mysql
  task_definition = aws_ecs_task_definition.task_mysql
  desired_count = 1
  launch_type = "FARGATE"

  ordered_placement_strategy {
    type = "binpack"
    field = "cpu"
  }

  network_configuration {
    subnets = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
    assign_public_ip = true
  }
}
resource "aws_ecs_task_definition" "task_mysql" {
  family = "service"
  requires_compatibilities = ["FARGATE"]
  cpu = 1024
  memory = 2048
  network_mode = "awsvpc"
  task_role_arn = "arn:aws:iam::240835895323:role/ecsTaskExecutionRole"
  container_definitions = jsonencode([{
    name = "first"
    image = "mysql"
    cpu = 1024
    memory = 2048
    essential = true
    portMappings = [
        {
            containerPort = 3306
            hostPort = 3306
        }
    ]
    log_configuration = {
      logDriver = "awslogs"
      options = {
        "awslogs-group" = "fargate-logs-test"
        "awslogs-region" = "ap-southeast-1"
        "awslogs-stream-prefix" = "ecs"
      }
    }
  }])
}
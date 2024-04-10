resource "aws_ecs_task_definition" "task_mysql" {
  family = "service"
  requires_compatibilities = ["FARGATE"]
  cpu = 1024
  memory = 2048
  network_mode = "awsvpc"
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
  }])
}
resource "aws_ecs_task_definition" "task_mysql" {
  family = "service"
  requires_compatibilities = ["FARGATE"]
  cpu = 1024
  memory = 2048
  network_mode = var.network_mode
  task_role_arn = "arn:aws:iam::240835895323:role/ecsTaskExecutionRole"
  execution_role_arn = "arn:aws:iam::240835895323:role/ecsTaskExecutionRole"
  container_definitions = <<DEFINITION
  [
    {
      "name" : "first",
      "image" : "mysql",
      "essential" : true,
      "portMappings" : [
          {
              "containerPort" : "${var.porticle},
              "hostPort" : 3306
          }
      ],
      "environment" : [
        {
          "name" : "MYSQL_ROOT_PASSWORD",
          "value" : "test1"
        }
      ],
      "logConfiguration" : {
        "logDriver" : "awslogs",
        "options" : {
          "awslogs-group" : "/ecs/service",
          "awslogs-region" : "ap-southeast-1",
          "awslogs-stream-prefix" : "ecs"
        }
      }
    }
  ]
  DEFINITION

}
resource "aws_ecs_task_definition" "name" {
  family = "service"
  
  container_definitions = jsonencode([{
    name = "first"
    image = "mysql"
    cpu = 1
    memory = 2048
    essential = true
    portMappings = [
        {
            containerPort = 3306
            hostPort = 3306
        }
    ]
  }])

  volume {
    name = "service-storage"
    host_path = "/ecs/service-storage"
  }
   placement_constraints {
     type = "memberOf"
     expression = "attribute:ecs.availability-zone in [ap-southeast-1a, ap-southeast-1b]"
   }
}
variable "porticle" {
  type = "Number"
  description = "port number for mysql service"
  default = 3306
}

variable "network_mode" {
  type = "String"
  description = "awsvpc as default"
  default = "awsvpc"
}
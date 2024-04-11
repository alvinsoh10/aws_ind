variable "porticle" {
  type = number
  description = "port number for mysql service"
  default = 3306
}

variable "network_mode" {
  type = string
  description = "awsvpc as default"
  default = "awsvpc"
}
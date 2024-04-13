resource "local_file" "tf_ansible_hosts" {
  content = <<-DOC
    [mysql]
    aws_instance.name.private_ip
  DOC
  filename = "./tf_ansible_hosts.yml"
}
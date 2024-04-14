resource "local_file" "tf_ansible_hosts" {
  content = <<-DOC
    mysql:
      hosts:
        ${aws_instance.name.private_ip}:
          ansible_user: ubuntu
  DOC
  filename = "./tf_ansible_hosts.yml"
}
resource "local_file" "tf_ansible_hosts" {
  content = <<-DOC
    mysql:
      hosts:
        ${aws_instance.name.private_ip}:
          ansible_user: ubuntu
          ansible_ssh_private_key_file: /var/lib/jenkins/workspace/ansible/Ansible/alvin-keypair.pem
  DOC
  filename = "./tf_ansible_hosts.yml"
}
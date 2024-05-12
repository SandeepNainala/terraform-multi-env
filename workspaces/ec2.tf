resource "aws_instance" "db" {
  ami = ami-090252cbe067a9e58
  vpc_security_group_ids = ["sg-052d406550420b45d"]
  instance_type = lookup(var.instance_names, terraform.workspace)
}
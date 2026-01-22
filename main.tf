resource "aws_instance" "server" {
  for_each = var.db_components

  ami = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [aws_security_group.ec2[each.key].id]
  user_data = file("${path.module}/install_ansible.sh")

  tags = {
	Name = "${each.key}-${var.env}"
  }
}

resource "aws_route53_record" "a-records" {
  for_each = var.db_components
  zone_id  = var.zone_id
  name     = "${each.key}-${var.env}"
  type     = "A"
  ttl      = 30
  records  = [aws_instance.server[each.key].private_ip]
}
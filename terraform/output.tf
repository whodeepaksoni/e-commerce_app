output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "app1_private_ip" {
  value = aws_instance.app1.private_ip
}

output "app2_private_ip" {
  value = aws_instance.app2.private_ip
}

output "database_private_ip" {
  value = aws_instance.database.private_ip
}
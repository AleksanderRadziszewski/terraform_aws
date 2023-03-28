output "dev_ip" {
  value       = aws_instance.dev_node.public_ip
  description = "Public ip for dev_node EC2 instance"
}

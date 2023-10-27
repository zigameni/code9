output "instance_public_ip" {
  value = aws_instance.wordpress_ec2_instance.public_ip
}

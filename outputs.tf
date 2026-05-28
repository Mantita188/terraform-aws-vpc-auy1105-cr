output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID de la VPC"
}

output "public_subnet_ids" {
  value       = [aws_subnet.public.id, aws_subnet.public_2.id]
  description = "IDs de ambas subnets publicas para el ALB"
}

output "primary_public_subnet_id" {
  value       = aws_subnet.public.id
  description = "ID de la subnet para alojar la EC2"
}

output "alb_sg_id" {
  value       = aws_security_group.alb.id
  description = "ID del Security Group del ALB"
}
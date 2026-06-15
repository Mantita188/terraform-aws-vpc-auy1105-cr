output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID de la VPC creada"
}

output "public_subnet_1_id" {
  value       = aws_subnet.public.id
  description = "ID de la primera subred publica (AZ 1a)"
}

output "public_subnet_2_id" {
  value       = aws_subnet.public_2.id
  description = "ID de la segunda subred publica (AZ 1b)"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "ID de la subred privada"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "ID del Security Group perimetral del ALB"
}
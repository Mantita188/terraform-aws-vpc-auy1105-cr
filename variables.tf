variable "environment" {
  type        = string
  description = "Ambiente de despliegue (ej: dev, prod)"
}

variable "vpc_cidr" {
  type        = string
  description = "Bloque CIDR principal para la VPC"
}

variable "public_subnet_1_cidr" {
  type        = string
  description = "Bloque CIDR para la primera subred publica (AZ 1a)"
}

variable "public_subnet_2_cidr" {
  type        = string
  description = "Bloque CIDR para la segunda subred publica (AZ 1b) requerida por el ALB"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Bloque CIDR para la subred privada"
}

variable "az_1" {
  type        = string
  description = "Primera Zona de Disponibilidad"
}

variable "az_2" {
  type        = string
  description = "Segunda Zona de Disponibilidad"
}
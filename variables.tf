variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Bloque CIDR para la VPC"
}

variable "public_subnet_1_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR para la primera subnet publica"
}

variable "public_subnet_2_cidr" {
  type        = string
  default     = "10.0.3.0/24"
  description = "CIDR para la segunda subnet publica requerida por el ALB"
}

variable "private_subnet_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "CIDR para la subnet privada"
}
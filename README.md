# Módulo de Redes AWS - AUY1105

## Objetivos del Repositorio
Desacoplar la topología de red monolítica para permitir el despliegue reutilizable, altamente disponible y escalable de VPCs y subredes balanceadas en AWS.

## Propósito General
Este módulo automatiza la creación de una infraestructura de red VPC que incluye dos subredes públicas distribuidas en distintas zonas de disponibilidad (para dar soporte de alta disponibilidad al Application Load Balancer), una subred privada aislada, puertas de enlace de internet (Internet Gateway), tablas de enrutamiento y el grupo de seguridad (Security Group) perimetral del ALB.

## Requisitos (Inputs)
El módulo es completamente flexible y requiere la inyección de los siguientes parámetros lógicos mediante archivos `.tfvars` en el orquestador principal:

| Nombre | Descripción | Tipo | Obligatorio |
| :--- | :--- | :---: | :---: |
| `environment` | Ambiente de despliegue (ej: dev, prod) | `string` | Sí |
| `vpc_cidr` | Bloque CIDR principal para la VPC | `string` | Sí |
| `public_subnet_1_cidr` | Bloque CIDR para la subred pública 1a | `string` | Sí |
| `public_subnet_2_cidr` | Bloque CIDR para la subred pública 1b (ALB) | `string` | Sí |
| `private_subnet_cidr` | Bloque CIDR para la subred privada | `string` | Sí |
| `az_1` | Primera Zona de Disponibilidad (us-east-1a) | `string` | Sí |
| `az_2` | Segunda Zona de Disponibilidad (us-east-1b) | `string` | Sí |

## Salidas (Outputs)
Este componente expone los siguientes atributos para interactuar con los módulos de Cómputo, Almacenamiento y ALB:

| Nombre | Descripción |
| :--- | :--- |
| `vpc_id` | ID único de la VPC creada en AWS |
| `public_subnet_1_id` | ID de la primera subred pública (para alojar la EC2) |
| `public_subnet_2_id` | ID de la segunda subred pública (para el balanceo del ALB) |
| `private_subnet_id` | ID de la subred privada aislada |
| `alb_security_group_id` | ID del Security Group perimetral del ALB |
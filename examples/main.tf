# Ejemplo de implementación rápida del módulo de redes
module "mi_red_de_ejemplo" {
  source   = "github.com/Mantita188/terraform-aws-vpc-auy1105-cr?ref=main"
  vpc_cidr = "10.10.0.0/16"
}
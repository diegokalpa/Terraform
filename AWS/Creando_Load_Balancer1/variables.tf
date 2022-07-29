variable "puerto_servidor" {
    description = "Puerto para Instancias EC2"
    type = number
    default = 8080

 validation {
    condition = var.puerto_servidor > 0 && var.puerto_servidor <= 65536
    error_message = "El valor del puerto debe estar entre 1 y 65536."
    } 
}




variable "puerto_lb" {
    description = "puerto para el LB"
    type = number
    default = 80
  
}

variable "tipo_instancia" {
    description = "Tipo de Instancias EC2"
    type = string
    default = "t2.micro"
  
}

variable "ubuntu_ami" {
    description = "AMI por Region"
    type = map(string)

    default = {
      "us-west-1" = "ami-085284d24fe829cd0"
      "us-west-2" = "ami-05d39b0802b3a7f8e"
    }
  
}
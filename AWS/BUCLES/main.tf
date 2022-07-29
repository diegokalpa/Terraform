# -------------------------
# Define el provider de AWS
# -------------------------
provider "aws" {
  region ="us-west-1"
}

variable "usuarios" {
  description = "nombre usuarios IAM"
  type        = list(string)

}

resource "aws_iam_user" "ejemplo"{
    count = length(var.usuarios)
    name = "usuario-${var.usuarios[count.index]}"

}

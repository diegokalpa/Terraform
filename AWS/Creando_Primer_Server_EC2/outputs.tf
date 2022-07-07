output "dns_publica" {
  description = "DNS publica del servidor"
  value = "http://${aws_instance.mi_servidor.public_dns}:8080"
}

output "ipv4" {
  description = "IPV4 del server"
  value = aws_instance.mi_servidor.public_ip
}

output "TAGS" {
  description = "TAGS Disponibles"
  value = aws_instance.mi_servidor.tags_all
}

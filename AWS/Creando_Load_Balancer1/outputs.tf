output "dns_publica_Servidor_1" {
  description = "DNS pública del servidor"
  value       = "http://${aws_instance.servidor_1.public_dns}:8080"
}

output "dns_publica_Servidor_2" {
  description = "DNS pública del servidor"
  value       = "http://${aws_instance.servidor_2.public_dns}:8080"
}

output "dns_load_balancer" {

    description = "DNS publica del Load Balancer"
    value = "http://${aws_lb.alb.dns_name}"
  
}
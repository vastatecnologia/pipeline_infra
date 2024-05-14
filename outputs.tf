output "instance01_ip" {
  description = "IP da instancia 01 ec2"
  value       = aws_instance.instance_01.public_ip
}

/*output "sqs_id" {
  description = "ID da fila FIFO"
  value       = aws_sqs_queue.sqs.id
}

output "sqs_arn" {
  description = "ARN da fila FIFO"
  value       = aws_sqs_queue.sqs.arn
}

output "sqs_url" {
  description = "URL da fila FIFO"
  value       = aws_sqs_queue.sqs.url
}*/
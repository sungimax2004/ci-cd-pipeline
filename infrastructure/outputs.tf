output "app_server_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "app_server_public_dns" {
  value = aws_instance.app_server.public_dns
}

output "codepipeline_name" {
  value = aws_codepipeline.pipeline.name
}

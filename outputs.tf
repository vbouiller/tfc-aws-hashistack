output "cluster_private_ips" {
  value = aws_instance.server.*.private_ip
}

output "cluster_public_ips" {
  value = aws_instance.server[*].public_ip
}

output "nomad_client_private_ips" {
  value = aws_instance.client.*.private_ip
}

output "nomad_client_public_ips" {
  value = aws_instance.client[*].public_ip
}

output "tfe_pub_ip" {
  value = aws_instance.tfe[*].public_ip
}

output "tfe_prv_ip" {
  value = aws_instance.tfe[*].private_ip
}

output "cluster_server_count" {
  value = local.server_count
}

output "tfe_enc_password" {
  value = var.terraform_enabled ? local.tfe_enc_password : ""
}

output "tfe_auth_passord" {
  value = var.terraform_enabled ? local.tfe_auth_password : ""
}

output "consul_init_token" {
  value = var.consul_enabled ? local.consul_init_token : ""
}

output "consul_agent_token" {
  value = var.consul_enabled ? local.consul_agent_token : ""
}

output "consul_dns_token" {
  value = var.consul_enabled ? local.consul_dns_token : ""
}

output "consul_service_token" {
  value = var.consul_enabled ? local.consul_service_token : ""
}

output "cluster_fqdn" {
  value = aws_route53_record.server.*.fqdn
}

output "consul_datacenter" {
  value = var.datacenter
}

output "cluster_url" {
  value = aws_route53_record.server.*.fqdn[0]
}

output "vpc_cidr" {
  value = aws_vpc.hashicorp_vpc.cidr_block
}
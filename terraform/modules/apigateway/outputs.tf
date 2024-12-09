output "api_id" {
  description = "ID of the API Gateway"
  value       = aws_apigatewayv2_api.main.id
}

output "api_endpoint" {
  description = "Endpoint URL of the API Gateway"
  value       = aws_apigatewayv2_api.main.api_endpoint
}

output "api_domain_name" {
  description = "Domain name of the API Gateway stage"
  value       = "${aws_apigatewayv2_api.main.id}.execute-api.${data.aws_region.current.name}.amazonaws.com"
}

output "vpc_link_id" {
  description = "ID of the VPC Link"
  value       = aws_apigatewayv2_vpc_link.main.id
}

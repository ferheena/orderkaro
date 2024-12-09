module "cloudfront" {
  source = "../../modules/cloudfront"

  project_name            = var.project_name
  environment            = var.environment
  s3_bucket_domain_name  = module.s3.bucket_regional_domain_name
  api_gateway_domain_name = module.apigateway.api_domain_name
  price_class            = "PriceClass_100"
}

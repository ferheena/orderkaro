module "apigateway" {
  source = "../../modules/apigateway"

  project_name       = var.project_name
  environment       = var.environment
  vpc_id            = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  allowed_origins    = [module.cloudfront.distribution_domain_name]
  log_retention_days = 7
}

module "s3" {
  source = "../../modules/s3"

  project_name        = var.project_name
  environment         = var.environment
  allowed_origins     = var.allowed_origins
  eks_node_role_name  = module.iam.eks_node_role_name
  cloudfront_oai_iam_arn = module.cloudfront.origin_access_identity_path

}

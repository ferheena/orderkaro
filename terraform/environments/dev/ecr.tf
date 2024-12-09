module "ecr" {
  source = "../../modules/ecr"

  project_name      = var.project_name
  environment       = var.environment
  eks_node_role_arn = module.iam.eks_node_role_arn
}

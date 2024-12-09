module "eks" {
  source = "../../modules/eks"

  project_name         = var.project_name
  environment         = var.environment
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
  eks_cluster_role_arn = module.iam.eks_cluster_role_arn
  eks_node_role_arn    = module.iam.eks_node_role_arn

  node_desired_size   = 2
  node_min_size      = 1
  node_max_size      = 4
  node_instance_types = ["t3.medium"]
}


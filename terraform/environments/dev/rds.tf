module "rds" {
  source = "../../modules/rds"

  project_name         = var.project_name
  environment         = var.environment
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
  eks_security_group_id = module.eks.cluster_security_group_id

  database_name     = "orderkaro"
  database_username = "orderkaroadmin"
  database_password = var.database_password  # This should be provided via a tfvars file or environment variable

  instance_class     = "db.t3.micro"  # Use larger instance for prod
  allocated_storage  = 20
}

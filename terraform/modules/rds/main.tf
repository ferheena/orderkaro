resource "aws_db_subnet_group" "main" {
  name        = "${var.project_name}-${var.environment}"
  description = "Database subnet group for ${var.project_name} ${var.environment}"
  subnet_ids  = var.private_subnet_ids

  tags = {
    Name        = "${var.project_name}-${var.environment}"
    Environment = var.environment
  }
}

resource "aws_db_instance" "main" {
  identifier        = "${var.project_name}-${var.environment}"
  engine            = "postgres"
  engine_version    = var.postgres_version
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  
  db_name  = var.database_name
  username = var.database_username
  password = var.database_password

  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds.id]

  backup_retention_period = var.backup_retention_period
  backup_window          = var.backup_window
  maintenance_window     = var.maintenance_window

  multi_az               = var.environment == "prod" ? true : false
  storage_encrypted      = true
  skip_final_snapshot    = var.environment == "prod" ? false : true
  deletion_protection    = var.environment == "prod" ? true : false

  performance_insights_enabled = true
  monitoring_interval         = 60
  
  tags = {
    Name        = "${var.project_name}-${var.environment}"
    Environment = var.environment
  }
}

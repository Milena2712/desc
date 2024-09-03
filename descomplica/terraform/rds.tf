resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13.4"
  instance_class       = "db.t3.micro"
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.postgres13"

  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = var.subnet_group_name
  multi_az               = false

  backup_retention_period = 7
  skip_final_snapshot     = true

  tags = {
    Name = var.db_name
  }
}

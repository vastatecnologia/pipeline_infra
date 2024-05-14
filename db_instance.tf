/*resource "aws_db_instance" "db_instance" {
  identifier             = "embrasando-homolog"
  allocated_storage      = 100
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  username               = "embrasando"
  password               = "fitBrasil2022"
  parameter_group_name   = "default.postgres16"
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  storage_encrypted      = true
  vpc_security_group_ids = [module.vpc-aws-module.security_group05_id]
  multi_az               = false
  storage_type           = "gp2"
  publicly_accessible    = false

  tags = {
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_db_subnet_group" "subnet_group_rds" {
  name       = "subnetgroup-rds-homolog"
  subnet_ids = [module.vpc-aws-module.subnet4_id, module.vpc-aws-module.subnet5_id, module.vpc-aws-module.subnet6_id]

  tags = {
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_kms_key" "kms_rds" {
  description              = "Default key that protects my RDS database volumes when no other key is defined"
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Id" : "auto-rds-2",
    "Statement" : [
      {
        "Sid" : "Allow access through RDS for all principals in the account that are authorized to use RDS",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "*"
        },
        "Action" : [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:CreateGrant",
          "kms:ListGrants",
          "kms:DescribeKey"
        ],
        "Resource" : "*",
        "Condition" : {
          "StringEquals" : {
            "kms:ViaService" : "rds.us-east-1.amazonaws.com",
            "kms:CallerAccount" : "534020218810"
          }
        }
      },
      {
        "Sid" : "Allow direct access to key metadata to the account",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "arn:aws:iam::534020218810:root"
        },
        "Action" : [
          "kms:Describe*",
          "kms:Get*",
          "kms:List*",
          "kms:RevokeGrant"
        ],
        "Resource" : "*"
      }
    ]
  })
}*/
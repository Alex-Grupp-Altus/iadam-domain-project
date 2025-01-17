module "iam_role" {
  source = "./modules/iam"
  account_id = var.account_id
}

module "ssm" {
  source = "./modules/ssm"
  account_id = var.account_id
  ssm_document_content = file("${path.module}/shared/ssm_document.yaml")
}
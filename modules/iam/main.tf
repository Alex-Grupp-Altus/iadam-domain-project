resource "aws_iam_role" "ssm_role" {
  name = "SSMStateRole"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}
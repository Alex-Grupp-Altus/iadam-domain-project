resource "aws_ssm_parameter" "example_param" {
  name  = "/example/param"
  type  = "String"
  value = "example_value"
}

resource "aws_ssm_document" "example_doc" {
  name          = "ExampleSSMDocument"
  document_type = "Command"
  content       = var.ssm_document_content
}

resource "aws_ssm_association" "state_association" {
  name            = aws_ssm_document.example_doc.name
  instance_id     = var.target_instance_id
}

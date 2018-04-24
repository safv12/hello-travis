resource "aws_kms_key" "lambda-encryption-key" {
  deletion_window_in_days = 10
  description             = "hello-travis KMS key"
}

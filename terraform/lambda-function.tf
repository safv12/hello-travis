resource "aws_lambda_function" "hello-travis-lambda" {
  function_name    = "hello-travis"
  description      = "Lambda function created to test travis ci/cd process"
  runtime          = "go1.x"
  filename         = "${var.lambda_zip}"
  role             = "${aws_iam_role.lambda-role.arn}"
  source_code_hash = "${base64sha256(file("${var.lambda_zip}"))}"
  handler          = "${var.lambda_handler}"
  timeout          = "${var.lambda_timeout}"
  memory_size      = "${var.lambda_memory}"
  kms_key_arn      = "${aws_kms_key.lambda-encryption-key.arn}"

  tags {
    application = "hello-travis"
    environment = "${var.environment}"
    ownerTeam   = "core"
    gbm         = "pu"
    ou          = "gbm"
    support     = "Arquitectura"
    access      = "Internal"
    role        = "Lambda"
    ManagedBy   = "terraform"
  }
}

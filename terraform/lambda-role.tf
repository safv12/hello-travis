data "aws_iam_policy_document" "lambda-role-document" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "lambda-policy-document" {
  statement {
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    effect    = "Allow"
    resources = ["*"]
  }

  statement {
    actions = [
      "xray:PutTelemetryRecords",
      "xray:PutTraceSegments",
    ]

    effect = "Allow"

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "kms:Decrypt",
    ]

    effect = "Allow"

    resources = [
      "${aws_kms_key.lambda-encryption-key.arn}",
    ]
  }
}

resource "aws_iam_role" "lambda-role" {
  name               = "hello-travis"
  assume_role_policy = "${data.aws_iam_policy_document.lambda-role-document.json}"
}

resource "aws_iam_role_policy" "lambda-policy" {
  name   = "hello-travis"
  role   = "${aws_iam_role.lambda-role.id}"
  policy = "${data.aws_iam_policy_document.lambda-policy-document.json}"
}

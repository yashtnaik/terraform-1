resource "aws_iam_user" "tejas-2" {
  name = "tejas-2"
  path = "/system/"

  tags = {
    tag-key = "tejas-2"
  }
}

resource "aws_iam_user_policy" "tejas-2" {
  name = "tejas-2"
  user = aws_iam_user.tejas-2.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.tejas-2.name
}
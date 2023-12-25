resource "aws_iam_instance_profile" "ssm_iam_profile" {
  name = "ec2_profile"
  role = aws_iam_role.ssm_iam_role.name
}

resource "aws_iam_role" "ssm_iam_role" {
  name               = "ssm_iam_role"
  description        = "The role for the developer resources EC2"
  assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": {
"Effect": "Allow",
"Principal": {"Service": "ec2.amazonaws.com"},
"Action": "sts:AssumeRole"
}
}
EOF
  tags               = local.common_tags
}

resource "aws_iam_role_policy_attachment" "ssm_policy" {
  role       = aws_iam_role.ssm_iam_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

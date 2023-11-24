resource "aws_iam_group" "developers" {
  name = var.grp_name
}

resource "aws_iam_user_group_membership" "example" {
  user = var.user_name

  groups = [
    aws_iam_group.developers.name
  ]
}
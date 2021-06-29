resource "aws_iam_group" "developers" {
  name = "developers"

}


resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_user" "sam" {
  name = "sam"
}

resource "aws_iam_group_membership" "team" {
  name = "developers-membership"

  users = [
    aws_iam_user.bob.name,

  ]

  group = aws_iam_group.developers.name
}
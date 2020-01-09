terraform {
  required_version = ">=0.12.13"
}

resource "aws_ecr_repository" "repo" {
  name = var.image_name
}

resource "aws_ecr_lifecycle_policy" "repo-policy" {
  repository = aws_ecr_repository.repo.name
  policy = data.template_file.ecr_lifecycle_policy.rendered
}

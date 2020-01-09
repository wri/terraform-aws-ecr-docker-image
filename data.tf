data "template_file" "ecr_lifecycle_policy" {
  template = file("${path.module}/policies/lifecycle.json}")
  vars = {
    tag         = var.tag
  }
}
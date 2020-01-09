data "template_file" "ecr_lifecycle_policy" {
  template = file("${path.root}/policies/lifecycle.json}")
  vars = {
    tag         = var.tag
  }
}
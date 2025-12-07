resource "aws_ecr_repository" "ecr_site_1" {
  name                 = "site_prod"
  image_tag_mutability = "MUTABLE"

}
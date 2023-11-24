module "my_user" {
  source = "./modules/iam-user"
  user_name = var.user_name
}
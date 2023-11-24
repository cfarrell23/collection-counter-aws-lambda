module "my_user" {
  source = "./modules/iam-user"
  user_name = var.user_name
}

module "my_grp" {
  source = "./modules/iam-group"
  grp_name = var.grp_name
  user_name = module.my_user.user_name
}

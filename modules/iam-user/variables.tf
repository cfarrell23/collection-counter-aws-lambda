variable "user_name" {
  description = "My username"
  type = string
}

variable "tags" {
  description = "Resource tags"
  type = map(string)
  default = {}
}
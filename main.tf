#locals
provider "random" {}
locals {
  random_output = random_id.random_shreya.hex
}


# text files
resource "local_file" "text_file1" {
  content  = var.foo1
  filename = "${path.module}/1/foo.bar"
}
resource "local_file" "text_file2" {
  content  = var.foo2
  filename = "${path.module}/2/sub2/foo.bar"
}
resource "local_file" "text_file3" {
  content = var.foo3
  filename = "${path.module}/3/sub3/subsub3/foo.txt"
}


#random id
resource "random_id" "random_shreya" {
  byte_length = 4
}


#number file
resource "local_file" "number_file" {
  filename = "${path.module}/1/number_variable.txt"
  content  = tostring(var.myNumber)
}


#list file
resource "local_file" "list_variable_file" {
  filename = "${path.module}/2/sub2/list_variable.txt"
  content  = join("\n", var.students)
}


#map file
resource "local_file" "map_variable_file" {
  filename = "${path.module}/3/sub3/subsub3/map_variable.txt"
  content  = jsonencode(var.student_grades)
}


#object file
resource "local_file" "object_variable_file" {
  filename = "${path.module}/1/object_variable.txt"
  content  = jsonencode(var.student_info)
}


#random password
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


#random shuffle
resource "random_shuffle" "az" {
  input        = ["us-west-1a", "us-west-1c", "us-west-1d", "us-west-1e"]
  result_count = 2
}


#random string
resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}


#random uuid
resource "random_uuid" "test" {
}

#random bytes
resource "random_bytes" "jwt_secret" {
  length = 64
}
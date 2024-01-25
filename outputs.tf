
output "random_output" {
  value = local.random_output
}

output "string_variable_output" {
  value = var.foo1
}

output "number_variable_output" {
  value = var.myNumber
}

output "list_variable_output" {
  value = var.students
}

output "map_variable_output" {
  value = var.student_grades
}

output "object_variable_output" {
  value = var.student_info
}

output "password_output" {
    value = random_password.password.result
    sensitive = true
}

output "random_shuffle_output" {
    value = random_shuffle.az
}

output "random_string_output" {
  value = random_string.random
}

output "random_bytes_output" {
    value = random_bytes.jwt_secret
    sensitive = true
}

output "random_id_output" {
    value = random_id.random_shreya.id
}
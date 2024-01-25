#string 
variable "foo1" {
    type = string
    description = "content of foo1"
}
variable "foo2" {
    type = string
    description = "content of foo2"
}
variable "foo3" {
    type = string 
    description = "content of foo3"
}       

#number
variable "myNumber" {
  type    = number
  default = 4
}

#list
variable "students" {
  type    = list(string)
  default = ["Alice", "Bob", "Charlie", "David"]
}

#map
variable "student_grades" {
  type    = map(number)
  default = {
    "student1"   = 95
    "student2"   = 92
    "student3"   = 93
    "student4"   = 90
  }
}

#object
variable "student_info" {
  type = object({
    name   = string
    age    = number
    grade  = number
  })

  default = {
    name   = "jiaxu"
    age    = 21
    grade  = 95
  }
}


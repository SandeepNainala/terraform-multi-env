variable "instance_name" {
  type = map
  default = {
    db-dev = "t2.micro"
    backend-dev = "t2.small"
    frontend-dev = "t2.micro"
  }
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  type = map
  default = {
    Project = "expense"
    Terraform = "true"
  }
}


variable "domain_name" {
  default = "devops91.cloud"
}

variable "zone_id" {
  default = "Z03923121KRYC3VZBNNH0"
}
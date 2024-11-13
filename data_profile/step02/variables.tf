variable "location" {
  type = string
  description = "The location of the datascan"
  default = "us-central1"
}

variable "data_scan_id" {
  type = string
  description = "The ID of the datascan"
  default = "dataprofile-basic"
}

variable "project" {
  type = string
  description = "The project ID"
}

variable "data_resource" {
  type = string
  description = "The data resource to scan"
}
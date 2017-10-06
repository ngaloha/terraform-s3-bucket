variable "bucketName" {
  description = "The name for the S3 bucket to create"
}

variable "bucketAcl" {
  default = "private"
  description = "The ACL to be assigned to the bucket"
}

variable "bucketVersioning" {
  default = "true"
  description = "The versioning policy to use. Shuld be true ro false"
}

variable "bucketTags" {
  type = "map"
  default = {
    Name = "trtp-bucket"
    Project = "trpt"
  }
  description = "The pam of tags to assicg to the bucket"
}

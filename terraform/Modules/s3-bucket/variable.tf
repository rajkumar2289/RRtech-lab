variable "bucketname" {
  default = "s3bucketbreatedbyraj"
}
variable "s3_Statefile_path" {
  default = "s3/Dev/statefile"
}
variable "force_destroy" {
  default = true
}
variable "bucket_expiration_date" {
  default = "2021-12-12"
}

variable "deletion_window_in_days" {
  default = 30
}
variable "s3_bucket_region" {
  default = "us-east-2c"
}
variable "dynamotable" {
  default = "dynamo_table_byraj"
}

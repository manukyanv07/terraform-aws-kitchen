output "timestamp-bucket-domain" {
  description = "S3 Bucket domain"
  value = "${module.s3-buckets.s3_bucket_domain}"
}

output "timestamp-bucket-name" {
  description = "S3 Bucket name"
  value = "${module.s3-buckets.s3_bucket_name}"
}

output "timestamp1-contnet" {
  description = "Timestamp 1 file content"
  value = "${module.s3-buckets.test1-file-timestamp}"
}

output "timestamp2-contnet" {
  description = "Timestamp 2 file content"
  value = "${module.s3-buckets.test2-file-timestamp}"
}

output "timestamp1-key" {
  value = "${module.s3-buckets.test1-file-key}"
}
output "timestamp2-key" {
  value = "${module.s3-buckets.test2-file-key}"
}
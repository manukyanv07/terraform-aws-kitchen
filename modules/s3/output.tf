output "s3_bucket_domain" {
  description = "Bucket domain name"
  value = "${aws_s3_bucket.timestamp-bucket.bucket_domain_name}"
}

output "s3_bucket_name" {
  description = "Bucket name"
  value = "${aws_s3_bucket.timestamp-bucket.id}"
}
output "test1-file-key" {
  description = "test1 file key"
  value = "${aws_s3_bucket_object.testfile1.key}"
}

output "test2-file-key" {
  description = "test2 file key"
  value = "${aws_s3_bucket_object.testfile2.key}"
}

output "test1-file-timestamp" {
  description = "Test1 file timestamp content"
  value = "${aws_s3_bucket_object.testfile1.content}"
}

output "test2-file-timestamp" {
  description = "Test2 file timestamp content"
  value = "${aws_s3_bucket_object.testfile2.content}"
}
resource "aws_s3_bucket" "timestamp-bucket" {
  bucket = "manuscript-tsbucket-${var.environment}"

  tags = {
    Name        = "timestamp-bucket"
    Environment = "${var.environment}"
  }
}

resource "aws_s3_bucket_object" "testfile1" {
  bucket = "${aws_s3_bucket.timestamp-bucket.id}"
  key    = "test1.txt"
  content = "${timestamp()}"
  #server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "testfile2" {
  bucket = "${aws_s3_bucket.timestamp-bucket.id}"
  key    = "test2.txt"
  content = "${timestamp()}"
  #server_side_encryption = "AES256"
}
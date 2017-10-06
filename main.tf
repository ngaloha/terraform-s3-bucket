resource "aws_s3_bucket" "main" {
  bucket = "${var.bucketName}"
  acl = "${var.bucketAcl}"

  versioning {
    enabled = "${var.bucketVersioning}"
  }

  tags = "${var.bucketTags}"
}

data "aws_iam_policy_document" "bucket_policy" {
  "statement" {

    actions = [
      "s3:*"
    ]

    resources = [
      "${aws_s3_bucket.main.arn}",
      "${aws_s3_bucket.main.arn/*}"
    ]

  }

  depends_on = ["aws_s3_bucket.main"]

}

resource "aws_s3_bucket_policy" "main" {
  bucket = "${aws_s3_bucket.main.id}"
  policy = "${data.aws_iam_policy_document.bucket_policy.json}"
  depends_on = ["aws_s3_bucket.main", "data.aws_iam_policy_document.bucket_policy"]
}
output "bucketId" {
  value = "${aws_s3_bucket.main.id}"
}

output "bucketArn" {
  value = "${aws_s3_bucket.main.arn}"
}

output "bucketDomainName" {
  value = "${aws_s3_bucket.main.bucket_domain_name}"
}

output "bucketHostedZoneId" {
  value = "${aws_s3_bucket.main.hosted_zone_id}"
}
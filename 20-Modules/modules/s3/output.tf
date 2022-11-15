output "s3" {
  value = aws_s3_bucket.b.id
}

output "s3arn" {
  value = aws_s3_bucket.b.arn
}
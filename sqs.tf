/*resource "aws_sqs_queue" "sqs" {
  fifo_queue                  = true
  content_based_deduplication = true
  sqs_managed_sse_enabled     = true
  name                        = "sqs-${var.environment}" # A queue name is case-sensitive and can have up to 80 characters. You can use alphanumeric characters, hyphens (-), and underscores ( _ ).
  delay_seconds               = 0 # between 0 seconds and 15 minutes.
  max_message_size            = 256 # between 1 KB and 256 KB.
  message_retention_seconds   = 86400 # between 1 minute and 14 days.
  receive_wait_time_seconds   = 10  # between 0 and 20 seconds.
  redrive_policy = jsonencode({
  "Version": "2012-10-17",
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Sid": "__owner_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "534020218810"
      },
      "Action": [
        "SQS:*"
      ],
      "Resource": "arn:aws:sqs:us-east-1:534020218810:"
    }
  ]
})


  tags = {
    owner      = "romulo"
    managed-by = "terraform"
  }
}*/
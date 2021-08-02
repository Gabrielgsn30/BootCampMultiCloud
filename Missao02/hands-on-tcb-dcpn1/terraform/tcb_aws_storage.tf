/*
 * Lines to create a S3 Bucket
 */

resource "aws_s3_bucket" "b" {
  /*
   *Abaixo, em bucket = "<Atualizar o nome do seu bucket para um exclusivo>"
   */
  bucket = "tcb-ccnl1-<personal-initials-name>"
  acl    = "private"
}
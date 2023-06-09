
#------------------------------------------------------------------------------------------------------------------
# Creating  Three Simple Notification Subscription Notification i.e S3 bucket 
#------------------------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "mybucket_1" {
  //bucket = "mybucket-${random_string.text.result}"
  //count = length(var.bucket_names)
  bucket = var.bucket_name_1
  //acl= "private"
  //bucket = var.bucket_names
  force_destroy = true
}


resource "aws_s3_bucket" "mybucket_2" {
  //bucket = "mybucket-${random_string.text.result}"
  //count = length(var.bucket_names)
  bucket = var.bucket_name_2
  //acl= "private"
  //bucket = var.bucket_names
  force_destroy = true
}

resource "aws_s3_bucket" "mybucket_3" {
  //bucket = "mybucket-${random_string.text.result}"
  //count = length(var.bucket_names)
  bucket = var.bucket_name_3
  //acl    = "public-read"
  //bucket = var.bucket_names
  force_destroy = true
}



#---------------------------------------------------------------------
# aws_s3_bucket_public_access_block with 1 and 2 buckets with only private 
#---------------------------------------------------------------------
# For first bucket

resource "aws_s3_bucket_public_access_block" "s3_bucket_policy_1" {
  bucket                  = aws_s3_bucket.mybucket_1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "bucket_owner_1" {
  bucket = aws_s3_bucket.mybucket_1.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_versioning" "bucket_version_1" {
  bucket = aws_s3_bucket.mybucket_1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl_1" {
  depends_on = [
    aws_s3_bucket_public_access_block.s3_bucket_policy_1,
    aws_s3_bucket_ownership_controls.bucket_owner_1,
  ]
  bucket = aws_s3_bucket.mybucket_1.id
  acl    = "private"
}

#For Second Bucket
resource "aws_s3_bucket_public_access_block" "s3_bucket_policy_2" {
  bucket                  = aws_s3_bucket.mybucket_2.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "bucket_owner_2" {
  bucket = aws_s3_bucket.mybucket_2.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


resource "aws_s3_bucket_versioning" "bucket_version_2" {
  bucket = aws_s3_bucket.mybucket_2.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_acl" "bucket_acl_2" {
  depends_on = [
    aws_s3_bucket_public_access_block.s3_bucket_policy_2,
    aws_s3_bucket_ownership_controls.bucket_owner_2,
  ]
  bucket = aws_s3_bucket.mybucket_2.id
  acl    = "private"
}


# For third Bucket
resource "aws_s3_bucket_public_access_block" "s3_bucket_policy_3" {
  bucket                  = aws_s3_bucket.mybucket_3.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "bucket_owner_3" {
  bucket = aws_s3_bucket.mybucket_3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_versioning" "bucket_version_3" {
  bucket = aws_s3_bucket.mybucket_3.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_acl" "bucket_acl_3" {
  depends_on = [
    aws_s3_bucket_public_access_block.s3_bucket_policy_3,
    aws_s3_bucket_ownership_controls.bucket_owner_3,
  ]
  bucket = aws_s3_bucket.mybucket_3.id
  acl    = "public-read"
}

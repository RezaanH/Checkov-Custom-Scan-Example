module "s3" {
  source      = "./modules/s3-bucket"
  bucket_name = "rez-first-terraform-module-s3bucket-v2" # change this to a unique name
  tags = {
    Environment = "prod"
    Team        = "platform"
  }
}

# resource "aws_s3_bucket" "unsafes3bucket" {
#   bucket = "unsafeS3bucket-rezcloud" # change this to a unique name
# }

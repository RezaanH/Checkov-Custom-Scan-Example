terraform {
  backend "s3" {
    bucket  = "rezcloudterraformstate" # change this to your own bucket where you want your terraform backend
    key     = "first-terraform-repo/terraform.tfstate" # set a path within the bucket, can leave it like this if you want.
    region  = "eu-west-2" # chnange this to your prefered region 
    encrypt = true
  }
}

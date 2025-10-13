from checkov.common.models.enums import CheckResult
from checkov.terraform.checks.resource.base_resource_check import BaseResourceCheck

class NoDirectS3Bucket(BaseResourceCheck):
    def __init__(self):
        name = "Do not use aws_s3_bucket directly. Use rezcloud module instead."
        id = "CUSTOM_AWS_1"
        supported_resources = ("aws_s3_bucket",) 
        categories = ["general"]
        super().__init__(name=name, id=id, categories=categories, supported_resources=supported_resources)

    def scan_resource_conf(self, conf):
        print("DEBUG: scanning resource conf:", conf)
        return CheckResult.FAILED  # fail every aws_s3_bucket resource

check = NoDirectS3Bucket()
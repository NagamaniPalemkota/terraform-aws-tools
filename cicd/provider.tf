terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {

		bucket = "muvva-remotestate-bucket"			#this is the s3 bucket name
		key = "jenkins1"				#this is the user defined key name for bucket
		dynamodb_table = "muvva-lock"					#mentioning the dynamo table name use for locking
		region = "us-east-1"
	  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
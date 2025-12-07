terraform {
    backend "s3" {
        bucket = "terraform-state-pratica-devops-leo"
        key= "site-projeto-1/terraform.tfstate"
        region= "us-east-1"
        encrypt = true
    }
}
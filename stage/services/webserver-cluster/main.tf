provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  vpc_id = "vpc-0b2ee07ec1f7c0d9a"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-state-oreilly1"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}
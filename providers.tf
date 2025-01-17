provider "aws" {
  alias  = "account_a"
  region = "eu-west-1"
  profile = "account-a-profile"
}

provider "aws" {
  alias  = "account_b"
  region = "eu-west-1"
  profile = "account-b-profile"
}

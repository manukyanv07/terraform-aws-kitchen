# terraform-aws-kitchen
Testing terraform with kitchen POC
## Prerequisites  
Make sure you have the following prerequisites for this tutorial
- An AWS Account
- An AWS Access Key ID
- An AWS Secret Key
- An AWS Keypair
- Terraform installed
- Bundler installed
- Ruby 2.3.1

Make sure you have aws client installed and configured locally

##Setup Development environment
Run bundler to install these gems

`bundle install`

##Run tests
go to dev directory.

`cd dev` 

Run coverage

`bundle exec kitchen converge`

Run tests

`bundle exec kitchen verify`


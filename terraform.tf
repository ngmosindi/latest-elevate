terraform {
  required_version = ">= 0.9.1"

  backend "s3" {
    bucket = "bitbucketpipeline-ng"
     
    # The key should be unique to each stack, because we want to
    # have multiple enviornments alongside each other we set
    # this dynamically in the bitbucket-pipelines.yml with the
    # --backend
    key = "key-01"

    region = "us-west-2"

    # This is a DynamoDB table with the Primary Key set to LockID
    dynamodb_table = "bitbucketpipelineDDB"

    #Enable server side encryption on your terraform state
    encrypt = true
  }
}

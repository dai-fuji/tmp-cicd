provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_vpc" "sub" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_sqs_queue" "main" {
  name                       = "main-queue"
  visibility_timeout_seconds = 300
}

resource "aws_sqs_queue" "sub" {
  name                       = "sub-queue"
  visibility_timeout_seconds = 100
}

resource "aws_sqs_queue" "sub02" {
  name                       = "sub02-queue"
  visibility_timeout_seconds = 100
}


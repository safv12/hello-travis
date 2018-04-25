package main

import (
	"hello-travis/hello"

	"github.com/aws/aws-lambda-go/lambda"
)

func main() {
	lambda.Start(hello.SayHello)
}

package main

import (
	"fmt"

	"hello-travis/hello"
)

func main() {
	msg, _ := hello.SayHello()
	fmt.Println(msg)
}

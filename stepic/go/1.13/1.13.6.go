package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println((float32(a) + float32(b)) / 2)
}

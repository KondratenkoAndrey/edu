package main

import "fmt"

func main() {
	var a int
	for fmt.Scan(&a); a > 0; a = a /10 {
		fmt.Print(a % 10)
	}
}

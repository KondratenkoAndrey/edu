package main

import "fmt"

func main() {
	var a, sum int
	for fmt.Scan(&a); a > 0; a = a /10 {
		sum += a % 10
	}
	fmt.Println(sum)
}
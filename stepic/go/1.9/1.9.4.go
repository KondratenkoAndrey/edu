package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	var left = a / 100000 + a / 10000 % 10 + a / 1000 % 10
	var right = a / 100 % 10 + a / 10 % 10 + a % 10
	if left == right {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

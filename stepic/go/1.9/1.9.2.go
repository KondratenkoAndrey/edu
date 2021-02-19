package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)

	var a1 = a / 100
	var a2 = a / 10 % 10
	var a3 = a % 10

	if a1 != a2 && a1 != a3 && a2 != a3 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

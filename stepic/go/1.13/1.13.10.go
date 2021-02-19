package main

import "fmt"

func main() {
	var a, b, max int
	fmt.Scan(&a, &b)
	for x := b; x > a; x-- {
		if x % 7 == 0 {
			max = x
			break
		}
	}
	if max == 0 {
		fmt.Println("NO")
	} else {
		fmt.Println(max)
	}
}

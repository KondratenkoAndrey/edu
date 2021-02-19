package main

import "fmt"

func main() {
	var n, r, result int
	fmt.Scan(&n, &r)
	for i := 1; n > 0 ; {
		x := n % 10
		if x != r {
			result += x * i
			i *= 10
		}
		n = n / 10
	}
	fmt.Println(result)
}

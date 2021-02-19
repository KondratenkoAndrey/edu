package main

import "fmt"

func main() {
	var n, a, sum int
	for fmt.Scan(&n); n >= 1; n-- {
		fmt.Scan(&a)
		if a / 10 > 0 && a / 10 < 10 && a % 10 < 10 && a % 8 == 0 {
			sum += a
		}
	}
	fmt.Println(sum)
}
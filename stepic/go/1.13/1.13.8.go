package main

import "fmt"

func main() {
	var n, x, min, count int
	fmt.Scan(&n)
	fmt.Scan(&x)
	min = x
	count = 1
	for ; n > 1; n-- {
		fmt.Scan(&x)
		switch {
		case x < min:
			min = n
			count = 1
		case x == min:
			count++
		}
	}
	fmt.Println(count)
}

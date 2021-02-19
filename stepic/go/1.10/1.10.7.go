package main

import "fmt"

func main() {
	var x, p, y int
	fmt.Scan(&x, &p, &y)
	var i = 0
	for ; x <= y; i++ {
		x += x * p / 100
	}
	fmt.Println(i)
}

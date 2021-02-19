package main

import "fmt"

func main() {
	var d, m, h int
	fmt.Scan(&d)
	h = d / (360 / 12)
	m = d % (360 / 12) * 2
	fmt.Println("It is", h, "hours", m, "minutes.")
}

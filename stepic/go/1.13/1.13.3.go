package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	fmt.Println("It is", k / 3600,  "hours", k % 3600 / 60, "minutes.")
}

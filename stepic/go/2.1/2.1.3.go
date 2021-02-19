package main

import "fmt"

func main() {
	fmt.Println(vote(0, 0, 0))
	fmt.Println(vote(0, 0, 1))
	fmt.Println(vote(0, 1, 1))
	fmt.Println(vote(1, 1, 1))
}

func vote(x int, y int, z int) int {
	return (x + y + z) / 2
}
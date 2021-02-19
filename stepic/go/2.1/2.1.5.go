package main

import "fmt"

func main() {
	a, b := sumInt(1, 0)
	fmt.Println(a, b)
}

func sumInt(a ...int) (int, int) {
	var sum int
	for _, val := range a {
		sum += val
	}
	return len(a), sum
}
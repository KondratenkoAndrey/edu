package main

import "fmt"

func main() {
	fmt.Println(minimumFromFour())
}

func minimumFromFour() int {
	var x, min int
	for i := 0; i < 4; i++ {
		fmt.Scan(&x)
		switch {
		case i == 0: min = x
		case x < min: min = x
		}
	}
	return min
}
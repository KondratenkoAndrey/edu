package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	slice := make([]int, n)
	for idx, _ := range slice {
		fmt.Scan(&slice[idx])
		if idx % 2 == 0 {
			fmt.Print(slice[idx], " ")
		}
	}
}

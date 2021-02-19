package main

import "fmt"

func main() {
	var n, count int
	fmt.Scan(&n)
	slice := make([]int, n)
	for idx, _ := range slice {
		fmt.Scan(&slice[idx])
		if slice[idx] > 0 {
			count++
		}
	}
	fmt.Println(count)
}

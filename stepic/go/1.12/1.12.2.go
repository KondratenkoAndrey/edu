package main

import "fmt"

func main() {
	 var n int
	 fmt.Scan(&n)
	 slice := make([]int, n, n)
	 for idx, _ := range slice {
	 	fmt.Scan(&slice[idx])
	 }
	 fmt.Println(slice[3])
}

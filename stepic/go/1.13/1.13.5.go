package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	arr := []int {a, b, c}
	sort.Ints(arr)
	if arr[0] + arr[1] > arr[2]{
		fmt.Println("Существует")
	} else {
		fmt.Println("Не существует")
	}
}

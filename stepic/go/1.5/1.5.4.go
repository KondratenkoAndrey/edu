package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	fmt.Println(GetLastDigit(a))
}

func GetLastDigit(n int) int {
	var d = n % 10

	if d < 10 {
		return d
	}
	return GetLastDigit(d)
}
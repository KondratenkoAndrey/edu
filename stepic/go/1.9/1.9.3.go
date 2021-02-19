package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	fmt.Println(GetFirsDigit(a))
}

func GetFirsDigit(a int) int {
	if a < 10 {
		return a
	}
	var n = a / 10
	if n < 10 {
		return n
	}
	return GetFirsDigit(n)
}

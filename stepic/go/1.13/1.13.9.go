package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(GetDSquare(n))
}

func GetDSquare(n int) int {
	if n < 10 {
		return n
	}
	n = GetDigitSum(n)
	return GetDSquare(n)
}

func GetDigitSum(n int) int {
	var sum int
	for ; n > 0; n = n /10 {
		sum += n % 10
	}
	return sum
}
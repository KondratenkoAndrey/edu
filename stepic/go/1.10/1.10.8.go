package main

import "fmt"
import "math"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	for i:=a; i > 0; i = i % int(math.Pow10(GetDigitsCount(i) - 1)) {
		for j:=b; j > 0; j = j % int(math.Pow10(GetDigitsCount(j) - 1)) {
			if GetFirsDigit(i) == GetFirsDigit(j) {
				fmt.Print(GetFirsDigit(i), " ")
			}
		}
	}
}

func GetFirsDigit(x int) int {
	if x < 10 {
		return x
	}
	var n = x / 10
	if n < 10 {
		return n
	}
	return GetFirsDigit(n)
}

func GetDigitsCount(x int) int {
	var n int
	for ; x > 0; n++ {
		x /= 10
	}
	return n
}

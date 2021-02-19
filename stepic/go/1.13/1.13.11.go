package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	s := "korov"

	switch {
	case n % 10 == 1 && n != 11:
		s += "a"
	case n % 10 == 2 && n != 12:
		s += "y"
	case n % 10 == 3 && n != 13:
		s += "y"
	case n % 10 == 4 && n != 14:
		s += "y"
	}

	fmt.Println(n, s)
}

package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)

	var leapYear = (a % 400 == 0) || (a % 4 == 0 && a % 100 != 0)

	if leapYear {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

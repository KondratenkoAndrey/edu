package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	for i := range s {
		a, _ := strconv.Atoi(string(s[i]))
		fmt.Print(a * a)
	}
}

package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	rs := []rune(s)
	for l := range rs {
		fmt.Print(string(rs[l]))
		if l != len(rs)-1 {
			fmt.Print("*")
		}
	}
}

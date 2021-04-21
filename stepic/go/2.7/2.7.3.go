package main

import "fmt"

func main() {
	var s, max string
	fmt.Scan(&s)
	for i := range s {
		if i == 0 {
			max = string(s[i])
		} else if string(s[i]) > max {
			max = string(s[i])
		}
	}
	fmt.Print(max)
}

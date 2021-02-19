package main

import "fmt"

func main() {
	var a, max, count int
	for fmt.Scan(&a); a != 0; fmt.Scan(&a) {
		switch {
			case a == max:
				count++
			case a > max:
				max = a
				count = 1
		}
	}
	fmt.Println(count)
}

package main

import "fmt"

func main() {
	a := 4
	b := 2
	test2(&a, &b)
}

func test2(x1 *int, x2 *int) {
	*x1, *x2 = *x2, *x1
	fmt.Println(*x1, *x2)
}

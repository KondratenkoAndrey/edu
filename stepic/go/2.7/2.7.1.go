package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(math.Sqrt(float64(a*a + b*b)))
}

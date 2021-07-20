package main

import "fmt"

func main() {
	var b uint16
	b = convert(int64(65536))
	fmt.Print(b)
}

func convert(a int64) uint16 {
	return uint16(a)
}

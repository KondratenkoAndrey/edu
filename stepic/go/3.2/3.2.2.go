package main

import (
	"fmt"
	"strconv"
	"unicode"
)

func main() {
	a := "%^80"
	b := "hhhhh20&&&&nd"
	fmt.Println(adding(a, b))
}

func adding(a string, b string) int64 {
	var aS, bS string
	for _, i := range []rune(a) {
		if unicode.IsDigit(i) {
			aS = aS + string(i)
		}
	}
	for _, i := range []rune(b) {
		if unicode.IsDigit(i) {
			bS = bS + string(i)
		}
	}
	aN, _ := strconv.Atoi(aS)
	bN, _ := strconv.Atoi(bS)
	return int64(aN + bN)
}

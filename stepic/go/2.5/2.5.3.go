package main

import (
	"fmt"
	"strings"
)

func main() {
	var text1, text2 string
	fmt.Scan(&text1)
	fmt.Scan(&text2)
	fmt.Println(strings.Index(text1, text2))
}

package main

import (
	"fmt"
	"strings"
)

func main() {
	var text string
	fmt.Scan(&text)

	for i := 0; i < len(text); i += 1 {
		if strings.Count(text, string(text[i])) > 1 {
			text = strings.Replace(text, string(text[i]), "", -1)
		}
	}

	fmt.Print(text)
}

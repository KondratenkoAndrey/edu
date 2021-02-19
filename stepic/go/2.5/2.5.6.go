package main

import (
	"fmt"
	"unicode"
)

func main() {
	var text string
	fmt.Scan(&text)

	if checkPassword(text) {
		fmt.Println("Ok")
	} else {
		fmt.Println("Wrong password")
	}
}

func checkPassword(password string) bool {
	runes := []rune(password)

	if len(runes) < 5 {
		return false
	}

	for _, i := range runes {
		if !unicode.IsDigit(i) && !unicode.Is(unicode.Latin, i) {
			return false
		}
	}

	return true
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"unicode"
)

func main() {
	text, _ := bufio.NewReader(os.Stdin).ReadString('\n')
	runes := []rune(text)
	first := runes[0]
	last := runes[len(runes)-2]

	if unicode.IsUpper(first) && last == '.' {
		fmt.Println("Right")
	} else {
		fmt.Println("Wrong")
	}
}

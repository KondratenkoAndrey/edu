package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	text, _ := bufio.NewReader(os.Stdin).ReadString('\n')
	runes := []rune(text)
	result := "Палиндром"

	for i := 0; i < len(runes) / 2; i++ {
		if runes[i] != runes[len(runes)-i-2] {
			result = "Нет"
			break
		}
	}

	fmt.Println(result)
}

package main

import "fmt"

func main() {
	var text, result string
	fmt.Scan(&text)

	for i := 1; i < len(text); i += 2 {
		result += string(text[i])
	}

	fmt.Print(result)
}

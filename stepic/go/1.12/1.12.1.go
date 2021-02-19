package main

import "fmt"

func main() {
	var workArray [10]byte
	for idx := range workArray {
		fmt.Scan(&workArray[idx])
	}

	var i, j int
	for idx := 0; idx < 3; idx++ {
		fmt.Scan(&i, &j)
		var temp = workArray[i]
		workArray[i] = workArray[j]
		workArray[j] = temp
	}

	for _, element := range workArray {
		fmt.Print(element, " ")
	}
}

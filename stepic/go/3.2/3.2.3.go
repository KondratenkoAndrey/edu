package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	a := scanner.Text()
	fmt.Printf("%.4f", division(a))
}

func division(s string) float64 {
	a := strings.Split(s, ";")[0]
	b := strings.Split(s, ";")[1]

	a = strings.Replace(a, " ", "", -1)
	b = strings.Replace(b, " ", "", -1)

	a = strings.Replace(a, ",", ".", -1)
	b = strings.Replace(b, ",", ".", -1)

	aN, _ := strconv.ParseFloat(a, 64)
	bN, _ := strconv.ParseFloat(b, 64)
	return aN / bN
}

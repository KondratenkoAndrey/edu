package main

import (
	"errors"
	"fmt"
)

func main() {
	var a, b, result int
	fmt.Scan(&a, &b)
	result, err := divide(a, b)
	if err != nil {
		fmt.Println("ошибка")
	} else
	{
		fmt.Println(result)
	}
}

func divide(a int, b int) (int, error) {
	if b == 0 {
		return 0, errors.New("ошибка")
	}
	return a / b, nil
}
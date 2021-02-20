package main

import (
	"errors"
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Scan(&input)
	var result, err = checkBraces(input)
	if result {
		fmt.Println("Success")
	} else {
		fmt.Println(err)
	}
}

func checkBraces(str string) (bool, error) {
	if len(str) == 0 {
		return true, nil
	}

	openBraces := map[int32]bool {
		'(': true,
		'[': true,
		'{': true,
	}
	closeBraces := map[int32]int32 {
		')': '(',
		']': '[',
		'}': '{'}

	s := make(stack,0)
	for i, char := range str {
		if openBraces[char] == true {
			s = s.Push(brace{char, i + 1})
			continue
		}
		if closeBraces[char] != 0 {
			if s.Len() == 0 || s.Top().braceCode != closeBraces[char] {
				return false, errors.New(strconv.Itoa(i+1))
			}
			s, _ = s.Pop()
		}
	}

	if s.Len() == 0 {
		return true, nil
	} else {
		return false, errors.New(strconv.Itoa(s.Top().position))
	}
}

type brace struct {
	braceCode int32
	position int
}
type stack []brace

func (s stack) Push(value brace) stack {
	return append(s, value)
}

func (s stack) Pop() (stack, brace) {
	l := len(s)
	return  s[:l-1], s[l-1]
}

func (s stack) Top() brace {
	l := len(s)
	return s[l -1]
}

func (s stack) Len() int {
	return len(s)
}
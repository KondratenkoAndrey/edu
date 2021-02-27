package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	writer := bufio.NewWriter(os.Stdout)
	n, _ := strconv.Atoi(readLine(reader))

	stack := Stack{}
	for i := 0; i < n; i++ {
		input := readLine(reader)
		cmd := strings.Split(input, " ")
		switch cmd[0] {
		case "push":
			value, _ := strconv.Atoi(cmd[1])
			stack.push(value)
		case "pop":
			stack.pop()
		case "max":
			fmt.Fprintf(writer, "%d\n", stack.max())
			writer.Flush()
		}
	}
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}

	return strings.TrimRight(string(str), "\r\n")
}

type Stack struct {
	data []int
	maximum []int
}

func (stack *Stack) push(value int) {
	if len(stack.data) == 0 || value >= stack.maximum[len(stack.maximum)-1] {
		stack.maximum = append(stack.maximum, value)
	}
	stack.data = append(stack.data, value)
}

func (stack *Stack) pop() int {
	if len(stack.data) == 0 {
		return 0
	}
	value := stack.data[len(stack.data)-1]
	if value == stack.maximum[len(stack.maximum)-1] {
		stack.maximum = stack.maximum[:len(stack.maximum)-1]
	}
	stack.data = stack.data[:len(stack.data)-1]
	return value
}

func (stack *Stack) max() int {
	if len(stack.data) == 0 {
		return 0
	}
	return stack.maximum[len(stack.maximum)-1]
}
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	writer := bufio.NewWriter(os.Stdout)
	scanner := bufio.NewScanner(os.Stdin)
	bufferSize := 4*5*110000
	buffer := make([]byte, bufferSize)
	scanner.Buffer(buffer, bufferSize)
	scanner.Split(bufio.ScanLines)

	scanner.Scan()
	n, _ := strconv.Atoi(scanner.Text())
	array := make([]int, n)

	scanner.Scan()
	input := strings.Split(scanner.Text(), " ")
	for i := range input {
		array[i], _ = strconv.Atoi(input[i])
	}

	scanner.Scan()
	m, _ := strconv.Atoi(scanner.Text())

	in := StackWithMax{}
	out := StackWithMax{}
	var max int

	for i := range array {
		//Первично заполняем входной стек до длинны m - 1
		if i < m-1 {
			in.Push(array[i])
			continue
		}

		//Если входной стек длинной m, то перекладыавем в выходной
		if in.Len() == m {
			for in.Len() > 0 {
				out.Push(in.Pop())
			}
		}

		//Сдвигаем срез
		in.Push(array[i])
		if out.Len() > 0 {
			out.Pop()
		}

		//Берем максимум из 2х стеков
		if in.Len() == 0 {
			max = out.Max()
		} else if out.Len() == 0 {
			max = in.Max()
		} else if in.Max() > out.Max() {
			max = in.Max()
		} else {
			max = out.Max()
		}

		fmt.Fprintf(writer, "%d ", max)
	}

	writer.Flush()
}

type Stack struct {
	data []int
}

type StackWithMax struct {
	data    Stack
	maximum Stack
}

func (stack *Stack) Push(value int) {
	stack.data = append(stack.data, value)
}

func (stack *Stack) Pop() int {
	value := stack.data[len(stack.data)-1]
	stack.data = stack.data[:len(stack.data)-1]
	return value
}

func (stack *Stack) Top() int {
	return stack.data[len(stack.data)-1]
}

func (stack *Stack) Len() int {
	return len(stack.data)
}

func (stack *StackWithMax) Push(value int) {
	if stack.data.Len() == 0 || value >= stack.maximum.Top() {
		stack.maximum.Push(value)
	}
	stack.data.Push(value)
}

func (stack *StackWithMax) Pop() int {
	value := stack.data.Top()
	if value == stack.maximum.Top() {
		stack.maximum.Pop()
	}
	stack.data.Pop()
	return value
}

func (stack *StackWithMax) Max() int {
	return stack.maximum.Top()
}

func (stack *StackWithMax) Len() int {
	return stack.data.Len()
}

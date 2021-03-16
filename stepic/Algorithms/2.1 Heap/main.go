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
	bufferSize := 4 * 10 * 110000
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

	BuildHeap(array)

	fmt.Fprintf(writer, "%d\n", len(swipes))
	for i := range swipes {
		fmt.Fprintln(writer, swipes[i])
	}

	writer.Flush()
}

var swipes []string

func BuildHeap(array []int) *Heap {
	heap := Heap{data: array}
	for i := len(array) / 2; i >= 0; i-- {
		heap.siftDown(i)
	}

	return &heap
}

type Heap struct {
	data []int
}

func (h *Heap) siftUp(i int) {
	for i > 0 && h.GetNode(h.parent(i)) < h.GetNode(i) {
		h.swap(i, h.parent(i))
		i = h.parent(i)
	}
}

func (h *Heap) siftDown(i int) {
	maxIndex := i
	leftIndex := h.leftChild(i)
	if leftIndex < h.Size() && h.GetNode(leftIndex) < h.GetNode(maxIndex) {
		maxIndex = leftIndex
	}
	rightIndex := h.rightChild(i)
	if rightIndex < h.Size() && h.GetNode(rightIndex) < h.GetNode(maxIndex) {
		maxIndex = rightIndex
	}
	if i != maxIndex {
		h.swap(i, maxIndex)
		h.siftDown(maxIndex)
	}
}

func (h *Heap) GetNode(i int) int {
	return h.data[i]
}

func (h *Heap) swap(i int, j int) {
	temp := h.data[i]
	h.data[i] = h.data[j]
	h.data[j] = temp

	// todo результат для задачи
	swipes = append(swipes, fmt.Sprint(i, j))
}

func (h *Heap) parent(i int) int {
	// todo или выдавать ошибку
	if i == 0 {
		return i
	}
	return (i - 1) / 2
}

func (h *Heap) leftChild(i int) int {
	return 2*i + 1
}

func (h *Heap) rightChild(i int) int {
	return 2*i + 2
}

func (h *Heap) Size() int {
	return len(h.data)
}

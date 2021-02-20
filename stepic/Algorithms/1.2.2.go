package main

import (
	"fmt"
)

var c int

func main() {
	var n int
	fmt.Scan(&n)

	array := make([]int, n)
	for i := range array {
		fmt.Scan(&array[i])
	}
	tree := MakeTree(array)

	height := getTreeHeight(*tree)
	fmt.Println(height)
}

type tree struct {
	value    int
	parent   *tree
	children []*tree
	isInit bool
}

func MakeTree(array []int) *tree {
	t := make([]tree, len(array))
	var root *tree
	for i := range array {
		if array[i] == -1 {
			root = &t[i]
		} else {
			if !t[array[i]].isInit {
				t[array[i]] = tree{array[i], nil, nil, true}
			}
			if !t[i].isInit {
				t[i] = tree{i, &t[array[i]], nil, true}
			} else {
				t[i].parent = &t[array[i]]
			}
			t[array[i]].children = append(t[array[i]].children, &t[i])
		}
	}
	return root
}

func getTreeHeight(tree tree) int {
	var max int

	if len(tree.children) == 0 {
		return 1
	} else {
		max = 0
		for i := range tree.children {
			currentNode := getTreeHeight(*tree.children[i])
			if currentNode > max {
				max = currentNode
			}
		}
	}

	return max + 1
}

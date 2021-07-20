package main

import (
	"fmt"
	"time"
)

func main() {
	var a int
	m := make(map[int]int)
	for i := 0; i < 10; i++ {
		fmt.Scan(&a)
		if value, inMap := m[a]; inMap {
			fmt.Printf("%d ", value)
			continue
		}
		m[a] = work(a)
		fmt.Printf("%d ", m[a])
	}
}

func work(a int) int {
	time.Sleep(time.Second)
	return a * a
}

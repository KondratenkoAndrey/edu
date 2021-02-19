package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	f := []int{1, 1}
	for {
		f = append(f, f[len(f)-1] + f[len(f)-2])
		if f[len(f)-1] == a {
			fmt.Println(len(f))
			break
		}
		if f[len(f)-1] > a {
			fmt.Println(-1)
			break
		}
	}
}

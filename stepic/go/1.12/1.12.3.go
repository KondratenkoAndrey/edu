package main
import "fmt"

func main()  {
	array := [5]int{}
	var a int
	for i:=0; i < 5; i++{
		fmt.Scan(&a)
		array[i] = a
	}
	var max int
	for _, val := range array {
		if val > max {
			max = val
		}
	}
	fmt.Println(max)
}
package main

import "fmt"

var groupCity = map[int][]string{
	10:   []string{"Деревня"},                        // города с населением 10-99 тыс. человек
	100:  []string{"Город", "Большой город", "Село"}, // города с населением 100-999 тыс. человек
	1000: []string{"Миллионик"},                      // города с населением 1000 тыс. человек и более
}
var cityPopulation = map[string]int{
	"Село":      100,
	"Миллионик": 500,
}

func main() {

	for keyGroup, valueGroup := range groupCity {
		if keyGroup == 100 {
			continue
		}
		for keyPopulation, _ := range cityPopulation {
			inArray := false
			for _, v := range valueGroup {
				if keyPopulation == v {
					inArray = true
				}
			}
			if inArray {
				delete(cityPopulation, keyPopulation)
			}
		}
	}

	fmt.Println(cityPopulation)

}

func in_array(val string, array []string) bool {
	for _, v := range array {
		if val == v {
			return true
		}
	}
	return false
}

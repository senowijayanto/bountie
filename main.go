package main

import (
	"fmt"
	"math"
)

func BinaryToDecimal(bin string) int {
	var k int = 1
	var s int = 0

	for i := len(bin) - 1; i >= 0; i-- {
		if string(bin[i]) == "1" {
			s += k
		}
		k *= 2
	}
	return s
}

func DecimalToBinary(n int) int {
	var b, i int

	for {
		r := n % 2
		b += r * int(math.Pow(10, float64(i)))
		i++
		n /= 2
		if n == 0 {
			break
		}
	}
	return b
}

func Palindrome(str string) string {
	var arrStr string = ""

	for i := 0; i < len(str); i++ {
		starIndex := i
		finishIndex := len(str) - i - 1

		if string(str[starIndex]) == string(str[finishIndex]) {
			arrStr = arrStr + string(str[i])
		}
	}
	return arrStr
}

func main() {
	bin := "1001"
	fmt.Println(BinaryToDecimal(bin))

	n := 10
	fmt.Println(DecimalToBinary(n))

	str := "kasur rusak"
	fmt.Println(Palindrome(str))
}

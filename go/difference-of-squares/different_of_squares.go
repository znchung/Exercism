package diffsquares

func SquareOfSum(num int) int {
	sum := num * (num + 1) / 2
	return sum * sum
}

func SumOfSquares(num int) int {
	return num * (num + 1) * (2*num + 1) / 6
}

func Difference(num int) int {
	return SquareOfSum(num) - SumOfSquares(num)
}
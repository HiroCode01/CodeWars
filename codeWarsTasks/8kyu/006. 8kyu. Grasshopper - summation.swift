func grasShopperSummation() {
    let result = summation(2)
    print(result)
}

func summation(_ n: Int) -> Int {
    var sum = 0
    for number in 1...n {
        sum += number
    }
    return sum
//    return n * (1 + n) / 2
}

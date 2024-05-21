func grasShopperSummation() {
    let result = summation(2)
    print(result)
}

func summation(_ n: Int) -> Int {
    var summ = 0
    for number in 1...n {
        summ += number
    }
    return summ
//    return n * (1 + n) / 2
}

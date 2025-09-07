func findTheOdd() {
    let array = [1, 1, 2]
    let final = findIt(array)
    print(final)
}

func findIt(_ seq: [Int]) -> Int {
    var number  = 0
    for i in 0 ..< seq.count {
        var count = 0
        for j in (0) ..< seq.count {
            if seq[i] == seq[j] {
                count += 1
            }
        }
        if count % 2 != 0 {
            number = seq[i]
        }
    }
//    seq.reduce(0, ^) XOR operator
    return number
}

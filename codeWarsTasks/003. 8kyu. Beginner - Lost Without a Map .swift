func lostWithOutMap() {
    let numberArray: [Int] = [2, 3, 4, 5]
    let doubledArray = maps(a: numberArray)
    
    func maps(a : Array<Int>) -> Array<Int> {
        var array = [Int]()
        for var element in a {
            element += element
            array.append(element)
        }
        return array
        // return a after doubling each array value
//        return a.map { $0 * 2}
    }
    print(doubledArray)
}

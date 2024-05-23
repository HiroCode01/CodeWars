func rectangleIntoSquares() {
    let squareLength = 5
    let squareWidth = 5
    let result = sqInRect(squareLength, squareWidth)
    print(result)
}

func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    var area = lng * wdth
    var numbers: [Int] = []
    var length = lng
    var width = wdth
    if length == width {
        return nil
    }
    if length != width {
        while area > 0 {
            if length > width {
                numbers.append(width)
                area -= width * width
                length -= width
            }
            if width >= length {
                numbers.append(length)
                area -= length * length
                width -= length
            }
        }
    }
    return numbers
}

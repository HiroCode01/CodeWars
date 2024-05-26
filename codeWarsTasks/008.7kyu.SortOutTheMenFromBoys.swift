import Foundation
func sortOutMenFromBoys() {
    let arrayOfMansAndBoys = [-32,-39,-35,-41]
    print(menFromBoys(arrayOfMansAndBoys))
}

func menFromBoys(_ arr: [Int]) -> [Int] {
    var oddArr: [Int] = []
    var evenArr: [Int] = []
    
    for element in arr {
        if element % 2 == 0 {
            evenArr.append(element)
        } else if element % 2 != 0 {
            oddArr.append(element)
        }
    }
    var result: [Int] = evenArr.sorted(by: <) + oddArr.sorted(by: >)
    for index in stride(from: result.count - 1, to: 0, by: -1) {
        if result[index] == result[index - 1] {
            result.remove(at: index)
        }
    }
    return result
    
//    CodeWars Solution:
//    let men: [Int] = Array(Set(arr.filter{ $0 % 2 == 0 })).sorted()
//    let boys: [Int] = Array(Set(arr.filter{ $0 % 2 != 0 })).sorted { $0 > $1 }
//    return men + boys
}

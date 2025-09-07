import Foundation
func sortOutMenFromBoys() {
    let arrayOfMansAndBoys = [2, 3, 4, 4, 5, 7, 7, 7, 8, 11, 13]
    print(menFromBoys(arrayOfMansAndBoys))
}

func menFromBoys(_ arr: [Int]) -> [Int] {
    var oddArr: Set<Int> = []
    var evenArr: Set<Int> = []
    
    for element in arr {
        if element % 2 == 0 {
            evenArr.insert(element)
        } else if element % 2 != 0 {
            oddArr.insert(element)
        }
    }
    return Array(evenArr).sorted(by: <) + Array(oddArr).sorted(by: >)
    
//    CodeWars Solution:
//    let men: [Int] = Array(Set(arr.filter{ $0 % 2 == 0 })).sorted()
//    let boys: [Int] = Array(Set(arr.filter{ $0 % 2 != 0 })).sorted { $0 > $1 }
//    return men + boys
}

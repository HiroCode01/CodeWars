import Foundation
func shortestWord(){
    let array = "bitcoin take over the world maybe who knows perhaps"
    print(find_short(array))
}

func find_short(_ str: String) -> Int{
    let words = str.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    let shortestWord = words.first
    guard var shortestWord = shortestWord else {
        return 0
    }
    for word in words {
        if word.count < shortestWord.count {
            shortestWord = word
        }
    }
    return shortestWord.count
//    return str.components(separatedBy: " ").map { $0.count }.min() ?? 0
}

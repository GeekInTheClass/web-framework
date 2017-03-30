//: Playground - noun: a place where people can play

import UIKit

/* 3 */
var wordArray = ["apple", "banana", "cat", "dog", "elephant", "fire", "god", "hippo"]
var resultArray: [String] = []

for word in wordArray {
    if resultArray.count == 0 {
        resultArray.append(word)
    } else {
        var indexOfInsert: Int? = nil
        for (index, result) in resultArray.enumerated() {
            if !(result.characters.count <= word.characters.count && Array(result.characters)[0] < Array(word.characters)[0]) {
                indexOfInsert = index
                break
            }
        }
        if indexOfInsert == nil {
            indexOfInsert = resultArray.count
        }
        resultArray.insert(word, at: indexOfInsert!)
    }
}
resultArray

/* 4 */
var words = ["apple", "banana", "cat", "dog", "elephant", "fire", "god", "hippo"]
var result: [String] = []
for word in words {
    result.append(word.replacingOccurrences(of: "a", with: ""))
}
result
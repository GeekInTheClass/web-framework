//: Playground - noun: a place where people can play

import UIKit
// 1. n부터 m까지 합 구하기
var n = 10
var m = 20
let myRange: CountableRange = n..<m
var result = 0
for rangeElement in myRange {
    result += rangeElement
}
result

// 2. 2차원 배열에서 각 열의 평균을 1차원 배열로 변환
var matrix = [[1.2,2.0,3.0],
              [4.0,5.0,6.0],
              [7.0,8.0,9.0]]
var result_list = [0.0,0.0,0.0]
// 일단 2차원 배열을 세로 방향으로 합친다.
for element in matrix {
    for (index, value) in element.enumerated() {
        result_list[index] += value
    }
}
// 합친 배열 요소 각각의 평균을 구한다.
for (index,sum) in result_list.enumerated() {
        result_list[index] = Double(sum) / Double(matrix.count)
}
result_list

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

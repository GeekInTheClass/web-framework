//
//  Anagram.swift
//  Anagram
//
//  Created by Sang Chul Lee on 2017. 3. 26..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation

class Anagram {
    
    var word: String
    
    init(word: String) {
        self.word = word
    }
    
    func match(words: [String]) -> [String] {
        
        return words.filter({word in
            return !isSameWord(word, self.word, insensitive: true)
                && isSameLength(word, self.word)
                && word.lowercased().characters.sorted(by: >) == self.word.lowercased().characters.sorted(by: >)
        })
    }
}

func isSameWord(_ word1: String, _ word2: String, insensitive: Bool) -> Bool {
    if insensitive {
        return word1.lowercased() == word2.lowercased()
    } else {
        return word1 == word2
    }
}

func isSameLength(_ word1: String, _ word2: String) -> Bool {
    return word1.characters.count == word2.characters.count
}

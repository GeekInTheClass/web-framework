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
        /*
        var result: [String] = []
        let self_word = self.word
        
        for word in words {
            
            if !isSameWord(word, self_word, insensitive: true)
            && isSameLength(word, self_word) {
                
                var input_word_arr = Array(word.characters)
                let self_word_arr = Array(self_word.characters)
                
                for char in self_word_arr {
                    
                    let low = Character(String(char).lowercased())
                    let upper = Character(String(char).uppercased())
                    
                    if let index = input_word_arr.index(of: low) {
                        input_word_arr.remove(at: index)
                    }
                    else if let index = input_word_arr.index(of: upper) {
                        input_word_arr.remove(at: index)
                    }
                }
                
                if input_word_arr.isEmpty {
                    result.append(word)
                }
            }
        }
        return result
        */
        
        var result = words.filter({word in
            return !isSameWord(word, self.word, insensitive: true)
                && isSameLength(word, self.word)
        })
        result = result.filter({ word in
            return word.lowercased().characters.sorted(by: >) == self.word.lowercased().characters.sorted(by: >)
        })
        return result
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

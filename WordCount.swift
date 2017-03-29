//
//  WordCount.swift
//  WordCount
//
//  Created by Sang Chul Lee on 2017. 3. 27..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation

class WordCount {
    let words: String
    
    init(words: String) {
        self.words = words
    }
    
    func count() -> [String: Int] {
        
        var result: [String: Int] = [:]
        let wordArray = words.components(separatedBy: " ")
        
        for word in wordArray {
            
            var lowercasedWord = word.lowercased()
            let puctuations = Array("~!@#$%^&*()_+|?/\\><,.;:\'\"[]{}`".characters)
            
            /* remove puctuations in word */
            for puctuation in puctuations {
                for _ in 0..<lowercasedWord.characters.count {
                    if let idx = lowercasedWord.characters.index(of: puctuation) {
                        lowercasedWord.remove(at: idx)
                    } else {
                        break
                    }
                }
            }
            
            /* add to the result dic */
            if lowercasedWord != "" {
                if result[lowercasedWord] == nil {
                    result[lowercasedWord] = 1
                } else {
                    result[lowercasedWord] = result[lowercasedWord]! + 1
                }
            }
        }
        
        return result
    }
}

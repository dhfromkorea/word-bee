//
//  WordStore.swift
//  WordBee
//
//  Created by dh on 8/18/16.
//  Copyright © 2016 dhfromkorea. All rights reserved.
//

import UIKit

class WordStore {
    var words = [Word]()
    var currentIndex = 0
    init(){
        print("initializing words store")
        createWord()
        createWord()
    }
    func createWord() -> Word {
        let randomWords = ["apple", "banana"]
        let randomDefinitions = ["red fruit", "yello fruit"]
        let word = Word(word: randomWords[currentIndex % 2], definition: randomDefinitions[currentIndex % 2])
        words.append(word)
        currentIndex = currentIndex + 1
        print(currentIndex)
        return word
    }
    
}

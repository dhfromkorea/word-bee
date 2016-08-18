//
//  Word.swift
//  WordBee
//
//  Created by dh on 8/17/16.
//  Copyright © 2016 dhfromkorea. All rights reserved.
//

import Foundation



class Word: NSObject {
    var word: String
    var definition: String
    var wordID: String
    var createdAt: NSDate
    
    
    init(word: String, definition: String) {
        self.word = word
        self.definition = definition
        self.wordID = NSUUID().UUIDString
        self.createdAt = NSDate()
    }

}

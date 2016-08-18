//
//  WordDataSource.swift
//  WordBee
//
//  Created by dh on 8/17/16.
//  Copyright © 2016 dhfromkorea. All rights reserved.
//

import UIKit

class WordDataSource: NSObject, UITableViewDataSource {
    var words = [Word]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("WordCell", forIndexPath: indexPath) as! WordCell
        let word = words[indexPath.row]
        cell.wordLabel?.text = word.word
        cell.definitionLabel?.text = word.definition
        return cell
    }
}

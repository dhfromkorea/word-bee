//
//  WordsViewController.swift
//  WordBee
//
//  Created by dh on 8/17/16.
//  Copyright © 2016 dhfromkorea. All rights reserved.
//

import UIKit

class WordsViewController: UITableViewController {
    var wordStore: WordStore!
//    var wordDataSource = WordDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = wordDataSource
        tableView.delegate = self
        // hot fix to exist until we implement coredata persistence
    }
    
    @IBAction func addWord(sender: AnyObject) {
        print("hey clicked the addwordb button")
        wordStore.createWord()
        tableView.reloadData()
//        tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Automatic)
    }
    
    //    hot fix to exist until we implmenet coredata persistence
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordStore.words.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("WordCell", forIndexPath: indexPath) as! WordCell
        let word = wordStore.words[indexPath.row]
        cell.wordLabel?.text = word.word
        cell.definitionLabel?.text = word.definition
        return cell
    }


}

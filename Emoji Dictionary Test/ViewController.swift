//
//  ViewController.swift
//  Emoji Dictionary Test
//
//  Created by Tyler Nelson on 11/28/16.
//  Copyright © 2016 Tyler Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var myFirstTable: UITableView!

    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myFirstTable.dataSource = self
        myFirstTable.delegate = self
        emojis = makeEmojiArray()
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.symbol
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
        EmojiDefViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.symbol = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A happy face"
        
        let emoji2 = Emoji()
        emoji2.symbol = "😇"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "Euphoric"
        
        let emoji3 = Emoji()
        emoji3.symbol = "😍"
        emoji3.birthYear = 2013
        emoji3.category = "Smiley"
        emoji3.definition = "Completely in Love"
        
        let emoji4 = Emoji()
        emoji4.symbol = "😒"
        emoji4.birthYear = 2006
        emoji4.category = "Smiley"
        emoji4.definition = "Ehhh"
        
        let emoji5 = Emoji()
        emoji5.symbol = "😎"
        emoji5.birthYear = 2012
        emoji5.category = "Smiley"
        emoji5.definition = "WAY too cool"
        
        let emoji6 = Emoji()
        emoji6.symbol = "😱"
        emoji6.birthYear = 206
        emoji6.category = "Smiley"
        emoji6.definition = "Scared and/or Surprised"
        
        let emoji7 = Emoji()
        emoji7.symbol = "😡"
        emoji7.birthYear = 2007
        emoji7.category = "Smiley"
        emoji7.definition = "Okay i'm mad"
        
        let emoji8 = Emoji()
        emoji8.symbol = "😩"
        emoji8.birthYear = 2008
        emoji8.category = "Smiley"
        emoji8.definition = "Things should be better"
        
        let emoji9 = Emoji()
        emoji9.symbol = "😨"
        emoji9.birthYear = 2009
        emoji9.category = "Smiley"
        emoji9.definition = "Not very happy"
        
        let emoji10 = Emoji()
        emoji10.symbol = "💤"
        emoji10.birthYear = 2016
        emoji10.category = "Emotion"
        emoji10.definition = "I need sleep"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
    }

}


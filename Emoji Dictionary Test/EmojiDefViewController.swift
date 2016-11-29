//
//  EmojiDefViewController.swift
//  Emoji Dictionary Test
//
//  Created by Tyler Nelson on 11/28/16.
//  Copyright © 2016 Tyler Nelson. All rights reserved.
//

import UIKit

class EmojiDefViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLarge: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        
        emojiLarge.text = emoji.symbol
        birthYearLabel.text = "Year Created: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}

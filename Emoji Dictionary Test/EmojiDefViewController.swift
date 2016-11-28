//
//  EmojiDefViewController.swift
//  Emoji Dictionary Test
//
//  Created by Tyler Nelson on 11/28/16.
//  Copyright © 2016 Tyler Nelson. All rights reserved.
//

import UIKit

class EmojiDefViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLarge: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        
        emojiLarge.text = emoji
        if emoji == "😀"
        {
            definitionLabel.text = "A Regular Smiley Face"
        }
        if emoji == "😇"
        {
            definitionLabel.text = "A Euphoric Face"
        }
        if emoji == "😍"
        {
            definitionLabel.text = "This Person Is Madly In Love"
        }
        if emoji == "😒"
        {
            definitionLabel.text = "I Got Some Not-So-Great News"
        }
        if emoji == "😎"
        {
            definitionLabel.text = "I Am Too Cool For School"
        }
        if emoji == "😱"
        {
            definitionLabel.text = "I Am Shocked/Scared"
        }
        if emoji == "😡"
        {
            definitionLabel.text = "Okay I'm Pretty Mad"
        }
        if emoji == "😩"
        {
            definitionLabel.text = "Say It Isn't So"
        }
        if emoji == "😨"
        {
            definitionLabel.text = "This Is Gonna Stress Me Out"
        }
        if emoji == "💤"
        {
            definitionLabel.text = "I NEED To Get to Sleep"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}

//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Colleen Ng on 9/13/17.
//  Copyright © 2017 ZND Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😄" {
        defLabel.text = "A happy face"
        } else if emoji == "😘" {
            defLabel.text = "A kissy face"
        } else if emoji == "😆" {
            defLabel.text = "Laughing really hard"
        } else if emoji == "💩" {
            defLabel.text = "A poop face"
        } else if emoji == "😂" {
            defLabel.text = "My favorite laughing my ass off emoji"
        } else if emoji == "😋" {
            defLabel.text = "I'm probably hungry"
        } else if emoji == "💃" {
            defLabel.text = "A correct representation of me"
        } else if emoji == "🐹"{
            defLabel.text = "A cute hamster"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

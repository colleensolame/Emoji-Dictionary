//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Colleen Ng on 9/13/17.
//  Copyright © 2017 ZND Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        defLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        birthLabel.text = "Origination Date: \(emoji.birthYear)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

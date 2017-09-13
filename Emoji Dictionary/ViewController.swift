//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Colleen Ng on 9/12/17.
//  Copyright © 2017 ZND Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var theCoolTableView: UITableView!
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
        emojis = makeEmojiArry()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dfVC = segue.destination as! DefinitionViewController
        dfVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😄"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley laughing face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😘"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "A kissy laughing face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😆"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "A laughing really hard face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💩"
        emoji4.birthYear = 2007
        emoji4.category = "Smiley"
        emoji4.definition = "A poo face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😂"
        emoji5.birthYear = 2010
        emoji5.category = "Smiley"
        emoji5.definition = "A laughing really hard 'i crai' face"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😋"
        emoji6.birthYear = 2011
        emoji6.category = "Smiley"
        emoji6.definition = "I probably am hungry right now face"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💃"
        emoji7.birthYear = 2009
        emoji7.category = "Person"
        emoji7.definition = "A true representation of me"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🐹"
        emoji8.birthYear = 2011
        emoji8.category = "Animal"
        emoji8.definition = "A cute hamster"
        
        return [emoji1, emoji2, emoji3, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }


}


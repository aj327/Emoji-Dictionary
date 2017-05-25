//
//  ViewController.swift
//  Emjoi Dictionary
//
//  Created by Aaditya Jain on 5/16/17.
//  Copyright © 2017 Aaditya Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var EmojiTable: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        EmojiTable.dataSource = self
        EmojiTable.delegate = self
        view.backgroundColor = UIColor.blue
        emojis = makeEmojiArray()

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
       // tableView.deselectRow(at: indexPath, animated: true)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender as Any)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.emojiName = "😬"
        emoji1.originDaten = 2010
        emoji1.definition = "Awkward smiley face"
        emoji1.category = "Smiley"
        
        let emoji2 = Emoji()

        emoji2.emojiName = "😍"
        emoji2.originDaten = 2011
        emoji2.definition = "Heart eyes smiley face"
        emoji2.category = "Smiley"
        
        let emoji3 = Emoji()
        
        emoji3.emojiName = "🍆"
        emoji3.originDaten = 2009
        emoji3.definition = "Eggplant which can be phallic"
        emoji3.category = "Plants"

        let emoji4 = Emoji()
        
        emoji4.emojiName = "💨"
        emoji4.originDaten = 2012
        emoji4.definition = "Wind blowing emoji"
        emoji4.category = "Inanimate Objects"

        
        

        
        return [emoji1, emoji2, emoji3, emoji4]
    }
    

}


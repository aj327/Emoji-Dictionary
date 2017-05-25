//
//  DefinitionViewController.swift
//  Emjoi Dictionary
//
//  Created by Aaditya Jain on 5/17/17.
//  Copyright © 2017 Aaditya Jain. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()
    
    @IBOutlet weak var labelDef: UILabel!
    
    @IBOutlet weak var definitionEmoji: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var birthYear: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        definitionEmoji.text = emoji.emojiName
        birthYear.text = "Origin Date: \(emoji.originDaten)"
        category.text = "Category: \(emoji.originDaten)"
        labelDef.text = "Definition: \(emoji.definition)"
        
        
        
   
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

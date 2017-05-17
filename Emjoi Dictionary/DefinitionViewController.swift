//
//  DefinitionViewController.swift
//  Emjoi Dictionary
//
//  Created by Aaditya Jain on 5/17/17.
//  Copyright © 2017 Aaditya Jain. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    @IBOutlet weak var labelDef: UILabel!
    
    @IBOutlet weak var definitionEmoji: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        definitionEmoji.text = emoji
        
        labelDef.text = "ayo"
        
        
        
        
      // ["😬","😍","😘","🍆","🌚","💨","😉","🔥","😓","🏀","😱"
        
        if emoji == "😬" {
            labelDef.text = "This is the an awkward face"
        }
        if emoji == "😍"{
            labelDef.text = "This is the a heart eyes face"
        }
        if emoji == "😘" {
            labelDef.text = "This is the a kissing face"
        }
        if emoji == "🍆"{
            labelDef.text = "This is the eggplant emoji which is also a phallic euphemism"
        }
        if emoji == "🌚"{
            labelDef.text = "This is the a full black moon emoji"
        }
        if emoji == "💨" {
            labelDef.text = "This is the a gust of air which can also be a euphemism"
        }
        if emoji == "😉" {
            labelDef.text = "This is a winky naught face"
        }
        
        
        
        
        
        
        
        
        
        
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

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
    
    var emojis = ["😬","😍","😘","🍆","🌚","💨","😉","🔥","😓","🏀","😱"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        EmojiTable.dataSource = self
        EmojiTable.delegate = self
        view.backgroundColor = UIColor.blue

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
       // tableView.deselectRow(at: indexPath, animated: true)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender as Any)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


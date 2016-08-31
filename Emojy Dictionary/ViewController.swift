//
//  ViewController.swift
//  Emojy Dictionary
//
//  Created by Mago Nicolas Palacios on 8/31/16.
//  Copyright © 2016 Mago Nicolas Palacios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojyTableView: UITableView!
    
    var emojis = ["😀","😬","🐦","😱","💩","😡","😷","🤖","💀","😍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojyTableView.dataSource = self
        emojyTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as! DefinitionVC
        defVC.emoji = sender as! String
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}


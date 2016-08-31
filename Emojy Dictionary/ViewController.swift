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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojyTableView.dataSource = self
        emojyTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "How u Doing?"
        return cell
    }


}


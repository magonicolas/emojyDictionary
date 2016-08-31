//
//  DefinitionVC.swift
//  Emojy Dictionary
//
//  Created by Mago Nicolas Palacios on 8/31/16.
//  Copyright © 2016 Mago Nicolas Palacios. All rights reserved.
//

import UIKit

class DefinitionVC: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "No Emoji Selected"
    
    var definition = "No Definition set"
    
    var newEmojis: [String:String] = ["😀": "Feliz","😬" : "Feliz con Dientes","🐦": "LA Poly!!!!","😱": "OMG!","💩": "Caca","😡": "Grrrr","😷": "Doctor","🤖": "No Soy un Robot!","💀": "Muerte","😍": "In Love"]

    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        print(definition)
    }



}

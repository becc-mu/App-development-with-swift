//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Rebecca Mulugeta on 26/04/2018.
//  Copyright © 2018 Rebecca Mulugeta. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController, UITextFieldDelegate {
    
     var emoji: Emoji?

    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    @IBOutlet weak var Cancel: UIBarButtonItem!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBAction func textEditChanged(_ sender: Any) {
        //updateSaveButtonState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let emoji = emoji {
          symbolTextField.text = emoji.symbol
        nameTextField.text = emoji.name
            
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
 
        }
        //updateSaveButtonState()
        

        func updateSaveButtonState() {
            let symbolText = symbolTextField.text ?? ""
            let nameText = nameTextField.text ?? ""
            let descriptionText = descriptionTextField.text ?? ""
            let usageText = usageTextField.text ?? ""
            
            saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {return}
        
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }

}

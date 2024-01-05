//
//  AddEditEmojiTableViewController.swift
//  EmojiDictonary
//
//  Created by Arun Kudiyal on 03/10/23.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    var emoji:Emoji?
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    
    
    init?(emoji:Emoji?, coder: NSCoder) {
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
        updateDoneButtonState()
    }
    
    @IBAction func cancelButtonTap(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func updateDoneButtonState() {
        // ?? -> Nil Cohelesing Operator
        // Converts the nil text to ""
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        doneButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    
    
    @IBAction func textFieldChange(_ sender: Any) {
        updateDoneButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "save emoji" else {
            return
        }
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        
        emoji = Emoji(symbol: symbolText, name: nameText, description: descriptionText, usage: usageText)
    }
}

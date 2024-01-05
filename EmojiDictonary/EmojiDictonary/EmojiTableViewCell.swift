//
//  EmojiTableViewCell.swift
//  EmojiDictonary
//
//  Created by Arun Kudiyal on 03/10/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    func update(emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        nameLabel.textColor = UIColor.random
        descriptionLabel.text = emoji.description
    }
}

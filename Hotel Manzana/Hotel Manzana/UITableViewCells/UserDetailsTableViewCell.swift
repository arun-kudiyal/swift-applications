//
//  UserDetailsTableViewCell.swift
//  Hotel Manzana
//
//  Created by Arun Kudiyal on 09/10/23.
//

import UIKit

final class UserDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var textFieldUserDetails: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populatePlaceholderText(_ placeHolder: String) {
        textFieldUserDetails.placeholder = placeHolder
    }

}

//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Rebecca Mulugeta on 24/04/2018.
//  Copyright © 2018 Rebecca Mulugeta. All rights reserved.
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}

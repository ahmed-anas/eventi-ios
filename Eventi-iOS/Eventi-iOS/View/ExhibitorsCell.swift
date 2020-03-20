//
//  ExhibitorsCell.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 17/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class ExhibitorsCell: UITableViewCell {

    @IBOutlet weak var exhibitorImg: UIImageView!
    @IBOutlet weak var exhibitorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let attributedText = NSMutableAttributedString(string: "Dell Corporation\n", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "\n", attributes: [.font: UIFont.systemFont(ofSize: 4) ]))
        attributedText.append(NSAttributedString(string: "DELL with marque payment gateway system integrated with large.\n", attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.lightGray]))
        exhibitorLabel.attributedText = attributedText
        
        exhibitorImg.layer.cornerRadius = 8
        exhibitorImg.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

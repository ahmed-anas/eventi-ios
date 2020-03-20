//
//  SpeakersCell.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 17/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class SpeakersCell: UITableViewCell {

    @IBOutlet weak var speakerImg: UIImageView!
    @IBOutlet weak var speakerLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let attributedText = NSMutableAttributedString(string: "Dylan Meringue\n", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "\n", attributes: [.font: UIFont.systemFont(ofSize: 4) ]))
        attributedText.append(NSAttributedString(string: "Chief Exective Officer\n", attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.lightGray]))
        attributedText.append(NSAttributedString(string: "\n", attributes: [.font: UIFont.systemFont(ofSize: 4) ]))
        attributedText.append(NSAttributedString(string: "Smart System Fund Llc", attributes: [.font: UIFont.systemFont(ofSize: 14)]))
        speakerLabel.attributedText = attributedText
        
        speakerImg.layer.cornerRadius = 50 / 2
        speakerImg.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

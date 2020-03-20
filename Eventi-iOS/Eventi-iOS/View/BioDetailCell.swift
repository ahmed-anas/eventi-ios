//
//  BioDetailCell.swift
//  Eventi-iOS
//
//  Created by mac on 3/13/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit



class BioDetailCell: UITableViewCell {

    @IBOutlet weak var bioDescriptionLbl: UILabel!
    var delegate: SeeMoreBtnProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func seeMoreBtntapped(_ sender: UIButton) {
    }
    
}

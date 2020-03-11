//
//  HomeCell.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 11/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func populateCell() {
        cellView.dropShadow(color: .black, opacity: 0.5, offSet: .zero, radius: 8, scale: true)
    }
    
}

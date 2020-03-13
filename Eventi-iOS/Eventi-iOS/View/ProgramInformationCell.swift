//
//  ProgramInformationCell.swift
//  Eventi-iOS
//
//  Created by mac on 3/11/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

protocol SeeMoreBtnProtocol {
    func seeDetails(cell: ProgramInformationCell)
}

class ProgramInformationCell: UITableViewCell {


    @IBOutlet weak var programTitleLbl: UILabel!
    @IBOutlet weak var financeLbl: UILabel!
    @IBOutlet weak var programDescriptionLbl: UILabel!
    @IBOutlet weak var programInformationLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var locationAdressLbl: UILabel!
    @IBOutlet weak var seeMoreBtn: UIButton!
    @IBOutlet weak var stackHeightConstraint: NSLayoutConstraint!
    
    
    var delegate : SeeMoreBtnProtocol?
    var isExpand: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        programDescriptionLbl.numberOfLines = 3
    }
    
    fileprivate func setupCellView() {
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func seeMoreBtnTapped(_ sender: UIButton) {
        isExpand = !isExpand
        
        programDescriptionLbl.numberOfLines = isExpand ? 0 : 3
        seeMoreBtn.setTitle(isExpand ? "Show Less": "Show More" , for: .normal)
        
        
        delegate?.seeDetails( cell: self)
        
        
    }
    
}

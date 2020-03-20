//
//  SpeakerInnerDetailTableView.swift
//  Eventi-iOS
//
//  Created by mac on 3/13/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class SpeakerInnerDetailTableView: UITableViewCell {

    @IBOutlet weak var speakerInnerTblView: SelfResizingTableView!
    @IBOutlet weak var speakerAtLbl: UILabel!
    @IBOutlet weak var tblViewHeightConstraint: NSLayoutConstraint!
    
    let speakerIdentifier = "SpeakerDetailCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupView()


    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.speakerInnerTblView.layoutSubviews()
        self.speakerInnerTblView.beginUpdates()
        self.speakerInnerTblView.endUpdates()
    }
    
    func setupView() {
        let speakerNibName = UINib(nibName: speakerIdentifier, bundle: nil)
        speakerInnerTblView.register(speakerNibName, forCellReuseIdentifier: speakerIdentifier)
        
        speakerInnerTblView.delegate = self
        speakerInnerTblView.dataSource = self
        speakerInnerTblView.estimatedRowHeight(190)

    }

}

extension SpeakerInnerDetailTableView : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = speakerInnerTblView.dequeueReusableCell(withIdentifier: speakerIdentifier, for: indexPath) as! SpeakerDetailCell
//        updateSuperViewHeight()
        return cell
    }
    
 
    
}

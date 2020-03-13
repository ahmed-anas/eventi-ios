//
//  SpeakerAndAttendeesCell.swift
//  Eventi-iOS
//
//  Created by mac on 3/11/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class SpeakerAndAttendeesCell: UITableViewCell {

    @IBOutlet weak var speakerTblView: SelfResizingTableView!
    
    @IBOutlet weak var speakerTitleLbl: UILabel!
    private let speakerCellIdentifier = "SpeakerProfileCell"
    private let attendeesIdentifier = "AttendeesCell"
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCellView()
    }
    
    fileprivate func setupCellView() {
        let speakerNibname = UINib(nibName: speakerCellIdentifier, bundle: nil)
        speakerTblView.register(speakerNibname, forCellReuseIdentifier:   speakerCellIdentifier)
//        let attendeesNibName = UINib(nibName: attendeesIdentifier, bundle: nil)
//        speakerTblView.register(attendeesNibName, forCellReuseIdentifier: attendeesIdentifier)
        
        speakerTblView.estimatedRowHeight(100)
        speakerTblView.delegate = self
        speakerTblView.dataSource = self
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.speakerTblView.layoutSubviews()
        self.speakerTblView?.beginUpdates()
        self.speakerTblView?.endUpdates()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SpeakerAndAttendeesCell: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = speakerTblView.dequeueReusableCell(withIdentifier: speakerCellIdentifier, for: indexPath) as! SpeakerProfileCell
        return cell
    }
    
    
}

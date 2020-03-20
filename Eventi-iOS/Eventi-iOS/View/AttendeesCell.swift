//
//  AttendeesCell.swift
//  Eventi-iOS
//
//  Created by mac on 3/12/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class AttendeesCell: UITableViewCell {

    @IBOutlet weak var attendeesTblView: SelfResizingTableView!
    private let speakerCellIdentifier = "SpeakerProfileCell"
    private let attendeesIdentifier = "AttendeesCell"

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCellView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.attendeesTblView.layoutSubviews()
        self.attendeesTblView?.beginUpdates()
        self.attendeesTblView?.endUpdates()
    }

    fileprivate func setupCellView() {

        let speakerNibname = UINib(nibName: speakerCellIdentifier, bundle: nil)
        attendeesTblView.register(speakerNibname, forCellReuseIdentifier:   speakerCellIdentifier)
        
        attendeesTblView.estimatedRowHeight(105)
        attendeesTblView.delegate = self
        attendeesTblView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension AttendeesCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = attendeesTblView.dequeueReusableCell(withIdentifier: speakerCellIdentifier, for: indexPath) as! SpeakerProfileCell
        
        return cell
    }
    
    
}

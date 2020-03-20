//
//  VCSpeakerDetails.swift
//  Eventi-iOS
//
//  Created by mac on 3/13/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class VCSpeakerDetails: UIViewController {

    @IBOutlet weak var speakerTblView: UITableView!
    
    private let profileCellIdentifier = "SpeakerProfilePictureCell"
    private let bioIdentifier = "BioDetailCell"
    private let speakerInnerDetailTableView = "SpeakerInnerDetailTableView"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }

    fileprivate func setupView () {
        speakerTblView.delegate = self
        speakerTblView.dataSource = self
        
        let profilePictureNib = UINib(nibName: profileCellIdentifier, bundle: nil)
        speakerTblView.register(profilePictureNib, forCellReuseIdentifier:   profileCellIdentifier)
        
        let bioIdentifierNibName = UINib(nibName: bioIdentifier, bundle: nil)
        speakerTblView.register(bioIdentifierNibName, forCellReuseIdentifier:   bioIdentifier)
        
        let speakerNib = UINib(nibName: speakerInnerDetailTableView, bundle: nil)
        speakerTblView.register(speakerNib, forCellReuseIdentifier:   speakerInnerDetailTableView)
        
//        speakerTblView.registerNib(SpeakerProfilePictureCell.self)
//        speakerTblView.registerNib(BioDetailCell.self)
//        speakerTblView.registerNib(SpeakerInnerDetailTableView.self)
        
//        speakerTblView.estimatedRowHeight = 150
//        speakerTblView.rowHeight = UITableView.automaticDimension
    }

}

extension VCSpeakerDetails: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = speakerTblView.dequeueReusableCell(withIdentifier: profileCellIdentifier, for: indexPath) as! SpeakerProfilePictureCell
            return cell
            
        } else if indexPath.row  == 1 {

            let cell = speakerTblView.dequeueReusableCell(withIdentifier: bioIdentifier, for: indexPath) as! BioDetailCell
            return cell
            
        } else if indexPath.row == 2{
            let cell = speakerTblView.dequeueReusableCell(withIdentifier: speakerInnerDetailTableView, for: indexPath) as! SpeakerInnerDetailTableView
//            cell.updateSuperViewHeight()
            
            cell.layoutSubviews()
            return cell
        }
        
        return UITableViewCell()
     
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.setNeedsLayout()
        cell.contentView.layoutIfNeeded()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    
}

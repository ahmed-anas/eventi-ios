//
//  VCProgramDetails.swift
//  Eventi-iOS
//
//  Created by mac on 3/11/20.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class VCProgramDetails: UIViewController {

    @IBOutlet weak var programDetailTblView: UITableView!
    
    private let programInfoCellidentifier = "ProgramInformationCell"
    private let speakerCellIdentfier = "SpeakerAndAttendeesCell"
    private let attendeesIdentifier = "AttendeesCell"


   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        programDetailTblView.estimatedRowHeight = 600
        programDetailTblView.rowHeight = UITableView.automaticDimension
    }
    
    fileprivate func setupView () {
        programDetailTblView.delegate = self
        programDetailTblView.dataSource = self
        
        let nibName = UINib(nibName: programInfoCellidentifier, bundle: nil)
        programDetailTblView.register(nibName, forCellReuseIdentifier: programInfoCellidentifier)
        
        let speakerNibName = UINib(nibName: speakerCellIdentfier, bundle: nil)
        programDetailTblView.register(speakerNibName, forCellReuseIdentifier: speakerCellIdentfier)
        
        let attendeesNibName = UINib(nibName: attendeesIdentifier, bundle: nil)
        programDetailTblView.register(attendeesNibName, forCellReuseIdentifier: attendeesIdentifier)
        
//        programDetailTblView.estimatedRowHeight = 50
//        programDetailTblView.rowHeight  = UITableView.automaticDimension
    }

}

extension VCProgramDetails : UITableViewDataSource , UITableViewDelegate , SeeMoreBtnProtocol {
    
    func seeDetails(cell: ProgramInformationCell) {
        programDetailTblView.beginUpdates()
        programDetailTblView.endUpdates()
    }
    
    
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if indexPath.row == 0 {
            let cell = programDetailTblView.dequeueReusableCell(withIdentifier: programInfoCellidentifier, for: indexPath) as! ProgramInformationCell
//            cell.seeMoreBtn.addTarget(self, action: #selector(handleHeightOfCell), for: .touchUpInside)
            cell.delegate = self
            return cell
        } else if indexPath.row == 1 {
           
            let cell = programDetailTblView.dequeueReusableCell(withIdentifier: speakerCellIdentfier, for: indexPath) as! SpeakerAndAttendeesCell
            cell.layoutSubviews()
            cell.speakerTitleLbl.text = "Speaker(2)"
            return cell
        }
        else if indexPath.row == 2 {
            
            let cell = programDetailTblView.dequeueReusableCell(withIdentifier: attendeesIdentifier, for: indexPath) as! AttendeesCell
            cell.layoutSubviews()
            

            return cell
        }
        
        return UITableViewCell()
 
    }
    
//    @objc func handleHeightOfCell() {
//        print("handleHeightOfCell")
//
//    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.setNeedsLayout()
        cell.contentView.layoutIfNeeded()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension

//        if indexPath.row == 0 {
//            return UITableView.automaticDimension
//        } else  {
//            return UITableView.automaticDimension
//        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {

            return UITableView.automaticDimension

    }
   
    
    
}

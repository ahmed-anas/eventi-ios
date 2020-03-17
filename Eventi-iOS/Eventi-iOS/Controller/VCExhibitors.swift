//
//  VCExhibitors.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 17/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class VCExhibitors: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var navView: SearchBarNavView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navView.titleLabel.text = "Exhibitors"
        navView.titleLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ExhibitorsCell", bundle: nil), forCellReuseIdentifier: "ExhibitorsCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExhibitorsCell") as? ExhibitorsCell {
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

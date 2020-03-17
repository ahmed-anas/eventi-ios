//
//  VCSpeakers.swift
//  Eventi-iOS
//
//  Created by frizHub Mac1 on 16/03/2020.
//  Copyright © 2020 frizHub Mac1. All rights reserved.
//

import UIKit

class VCSpeakers: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var navigationView: SearchBarNavView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationView.titleLabel.text = "Speakers"
        navigationView.titleLabel.textColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SpeakersCell", bundle: nil), forCellReuseIdentifier: "SpeakersCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakersCell") as? SpeakersCell {
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
